
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int hash; } ;
struct ub_packed_rrset_key {int id; TYPE_2__ rk; TYPE_1__ entry; } ;
struct rrset_ref {int id; struct ub_packed_rrset_key* key; } ;
struct module_env {int * now; int alloc; int rrset_cache; } ;


 int PACKED_RRSET_PARENT_SIDE ;
 int log_err (char*) ;
 struct ub_packed_rrset_key* packed_rrset_copy_alloc (struct ub_packed_rrset_key*,int ,int ) ;
 int rrset_cache_update (int ,struct rrset_ref*,int ,int ) ;
 int rrset_key_hash (TYPE_2__*) ;

void
iter_store_parentside_rrset(struct module_env* env,
 struct ub_packed_rrset_key* rrset)
{
 struct rrset_ref ref;
 rrset = packed_rrset_copy_alloc(rrset, env->alloc, *env->now);
 if(!rrset) {
  log_err("malloc failure in store_parentside_rrset");
  return;
 }
 rrset->rk.flags |= PACKED_RRSET_PARENT_SIDE;
 rrset->entry.hash = rrset_key_hash(&rrset->rk);
 ref.key = rrset;
 ref.id = rrset->id;

 (void)rrset_cache_update(env->rrset_cache, &ref, env->alloc, *env->now);
}
