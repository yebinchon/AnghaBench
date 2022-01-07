
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct module_env {int fwds; TYPE_1__* hints; } ;
struct iter_hints_stub {struct delegpt* dp; } ;
struct delegpt {scalar_t__ has_parent_side_NS; } ;
struct TYPE_2__ {int tree; } ;


 int dname_count_labels (int *) ;
 int dname_is_root (int *) ;
 struct delegpt* forwards_find (int ,int *,int ) ;
 scalar_t__ name_tree_find (int *,int *,size_t,int,int ) ;

__attribute__((used)) static int
can_have_last_resort(struct module_env* env, uint8_t* nm, size_t nmlen,
 uint16_t qclass, struct delegpt** retdp)
{
 struct delegpt* fwddp;
 struct iter_hints_stub* stub;
 int labs = dname_count_labels(nm);



 if(!dname_is_root(nm) && (stub = (struct iter_hints_stub*)
  name_tree_find(&env->hints->tree, nm, nmlen, labs, qclass)) &&


  stub->dp->has_parent_side_NS) {
  if(retdp) *retdp = stub->dp;
  return 0;
 }
 if((fwddp = forwards_find(env->fwds, nm, qclass)) &&


  fwddp->has_parent_side_NS) {
  if(retdp) *retdp = fwddp;
  return 0;
 }
 return 1;
}
