
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int nsec3_keyiter_count; int neg_cache; int kcache; } ;
struct module_env {scalar_t__* modinfo; } ;


 size_t key_cache_get_mem (int ) ;
 size_t val_neg_get_mem (int ) ;

size_t
val_get_mem(struct module_env* env, int id)
{
 struct val_env* ve = (struct val_env*)env->modinfo[id];
 if(!ve)
  return 0;
 return sizeof(*ve) + key_cache_get_mem(ve->kcache) +
  val_neg_get_mem(ve->neg_cache) +
  sizeof(size_t)*2*ve->nsec3_keyiter_count;
}
