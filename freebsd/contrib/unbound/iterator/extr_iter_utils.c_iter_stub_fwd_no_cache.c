
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct query_info {int qname; int qclass; } ;
struct module_qstate {TYPE_1__* env; } ;
struct iter_hints_stub {TYPE_2__* dp; } ;
struct delegpt {int no_cache; int name; int namelabs; } ;
struct TYPE_4__ {int no_cache; int name; int namelabs; } ;
struct TYPE_3__ {int fwds; int hints; } ;


 int VERB_ALGO ;
 int dname_str (int ,char*) ;
 scalar_t__ dname_strict_subdomain (int ,int ,int ,int ) ;
 struct delegpt* forwards_lookup (int ,int ,int ) ;
 struct iter_hints_stub* hints_lookup_stub (int ,int ,int ,int *) ;
 int verbose (int ,char*,char*,char*) ;

int
iter_stub_fwd_no_cache(struct module_qstate *qstate, struct query_info *qinf)
{
 struct iter_hints_stub *stub;
 struct delegpt *dp;


 stub = hints_lookup_stub(qstate->env->hints, qinf->qname,
     qinf->qclass, ((void*)0));
 dp = forwards_lookup(qstate->env->fwds, qinf->qname, qinf->qclass);


 if(stub && stub->dp && dp) {
  if(dname_strict_subdomain(dp->name, dp->namelabs,
   stub->dp->name, stub->dp->namelabs)) {
   stub = ((void*)0);
  } else {
   dp = ((void*)0);
  }
 }


 if (stub != ((void*)0) && stub->dp != ((void*)0)) {
  if(stub->dp->no_cache) {
   char qname[255+1];
   char dpname[255+1];
   dname_str(qinf->qname, qname);
   dname_str(stub->dp->name, dpname);
   verbose(VERB_ALGO, "stub for %s %s has no_cache", qname, dpname);
  }
  return (stub->dp->no_cache);
 }


 if (dp) {
  if(dp->no_cache) {
   char qname[255+1];
   char dpname[255+1];
   dname_str(qinf->qname, qname);
   dname_str(dp->name, dpname);
   verbose(VERB_ALGO, "forward for %s %s has no_cache", qname, dpname);
  }
  return (dp->no_cache);
 }
 return 0;
}
