
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct module_qstate {TYPE_1__* env; int qinfo; } ;
struct TYPE_7__ {size_t qname_len; scalar_t__ qtype; int qclass; int * qname; } ;
struct iter_qstate {TYPE_3__ qchase; scalar_t__ refetch_glue; TYPE_4__* dp; } ;
struct iter_hints_stub {TYPE_2__* dp; } ;
struct TYPE_8__ {size_t namelen; int * name; } ;
struct TYPE_6__ {int name; int has_parent_side_NS; } ;
struct TYPE_5__ {int hints; } ;


 int INIT_REQUEST_3_STATE ;
 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int VERB_QUERY ;
 int auth_zone_delegpt (struct module_qstate*,struct iter_qstate*,int *,size_t) ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_subdomain_c (int *,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int error_response (struct module_qstate*,int,int ) ;
 struct iter_hints_stub* hints_lookup_stub (int ,int *,int ,TYPE_4__*) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,int *) ;
 int next_state (struct iter_qstate*,int ) ;
 scalar_t__ prime_stub (struct module_qstate*,struct iter_qstate*,int,int *,int ) ;

__attribute__((used)) static int
processInitRequest2(struct module_qstate* qstate, struct iter_qstate* iq,
 int id)
{
 uint8_t* delname;
 size_t delnamelen;
 log_query_info(VERB_QUERY, "resolving (init part 2): ",
  &qstate->qinfo);

 delname = iq->qchase.qname;
 delnamelen = iq->qchase.qname_len;
 if(iq->refetch_glue) {
  struct iter_hints_stub* stub;
  if(!iq->dp) {
   log_err("internal or malloc fail: no dp for refetch");
   errinf(qstate, "malloc failure, no delegation info");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }


  stub = hints_lookup_stub(
   qstate->env->hints, iq->qchase.qname, iq->qchase.qclass,
   iq->dp);
  if(!stub || !stub->dp->has_parent_side_NS ||
   dname_subdomain_c(iq->dp->name, stub->dp->name)) {
   delname = iq->dp->name;
   delnamelen = iq->dp->namelen;
  }
 }
 if(iq->qchase.qtype == LDNS_RR_TYPE_DS || iq->refetch_glue) {
  if(!dname_is_root(delname))
   dname_remove_label(&delname, &delnamelen);
  iq->refetch_glue = 0;
 }



 if(!auth_zone_delegpt(qstate, iq, delname, delnamelen))
  return error_response(qstate, id, LDNS_RCODE_SERVFAIL);


 if(prime_stub(qstate, iq, id, delname, iq->qchase.qclass)) {

  return 0;
 }


 return next_state(iq, INIT_REQUEST_3_STATE);
}
