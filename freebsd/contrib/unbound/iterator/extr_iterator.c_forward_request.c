
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct module_qstate {int region; TYPE_1__* env; } ;
struct TYPE_5__ {size_t qname_len; scalar_t__ qtype; int qclass; int * qname; } ;
struct iter_qstate {TYPE_3__* dp; int chase_flags; TYPE_2__ qchase; scalar_t__ refetch_glue; } ;
struct delegpt {int dummy; } ;
struct TYPE_6__ {size_t namelen; int * name; } ;
struct TYPE_4__ {int fwds; } ;


 int BIT_RD ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int VERB_ALGO ;
 TYPE_3__* delegpt_copy (struct delegpt*,int ) ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 struct delegpt* forwards_lookup (int ,int *,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
forward_request(struct module_qstate* qstate, struct iter_qstate* iq)
{
 struct delegpt* dp;
 uint8_t* delname = iq->qchase.qname;
 size_t delnamelen = iq->qchase.qname_len;
 if(iq->refetch_glue && iq->dp) {
  delname = iq->dp->name;
  delnamelen = iq->dp->namelen;
 }

 if( (iq->qchase.qtype == LDNS_RR_TYPE_DS || iq->refetch_glue)
  && !dname_is_root(iq->qchase.qname))
  dname_remove_label(&delname, &delnamelen);
 dp = forwards_lookup(qstate->env->fwds, delname, iq->qchase.qclass);
 if(!dp)
  return 0;

 iq->chase_flags |= BIT_RD;
 iq->dp = delegpt_copy(dp, qstate->region);

 verbose(VERB_ALGO, "forwarding request");
 return 1;
}
