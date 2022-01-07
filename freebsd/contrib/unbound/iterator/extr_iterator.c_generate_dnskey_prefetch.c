
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qtype; int qname; } ;
struct module_qstate {int query_flags; int region; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct TYPE_7__ {int qclass; } ;
struct iter_qstate {TYPE_3__* dp; TYPE_2__ qchase; } ;
struct TYPE_8__ {int namelen; int name; } ;


 int BIT_CD ;
 int BIT_RD ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 TYPE_3__* delegpt_copy (TYPE_3__*,int ) ;
 int generate_sub_request (int ,int ,scalar_t__,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 int log_assert (TYPE_3__*) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
generate_dnskey_prefetch(struct module_qstate* qstate,
 struct iter_qstate* iq, int id)
{
 struct module_qstate* subq;
 log_assert(iq->dp);


 if(qstate->qinfo.qtype == LDNS_RR_TYPE_DNSKEY &&
  query_dname_compare(iq->dp->name, qstate->qinfo.qname)==0 &&
  (qstate->query_flags&BIT_RD) && !(qstate->query_flags&BIT_CD)){
  return;
 }


 log_nametypeclass(VERB_ALGO, "schedule dnskey prefetch",
  iq->dp->name, LDNS_RR_TYPE_DNSKEY, iq->qchase.qclass);
 if(!generate_sub_request(iq->dp->name, iq->dp->namelen,
  LDNS_RR_TYPE_DNSKEY, iq->qchase.qclass, qstate, id, iq,
  INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0)) {

  verbose(VERB_ALGO, "could not generate dnskey prefetch");
  return;
 }
 if(subq) {
  struct iter_qstate* subiq =
   (struct iter_qstate*)subq->minfo[id];


  subiq->dp = delegpt_copy(iq->dp, subq->region);

 }
}
