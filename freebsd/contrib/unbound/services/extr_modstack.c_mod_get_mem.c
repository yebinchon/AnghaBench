
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module_env {TYPE_1__* mesh; } ;
struct TYPE_6__ {TYPE_2__** mod; } ;
struct TYPE_5__ {size_t (* get_mem ) (struct module_env*,int) ;} ;
struct TYPE_4__ {TYPE_3__ mods; } ;


 int fptr_ok (int ) ;
 int fptr_whitelist_mod_get_mem (size_t (*) (struct module_env*,int)) ;
 int modstack_find (TYPE_3__*,char const*) ;
 size_t stub1 (struct module_env*,int) ;

size_t
mod_get_mem(struct module_env* env, const char* name)
{
 int m = modstack_find(&env->mesh->mods, name);
 if(m != -1) {
  fptr_ok(fptr_whitelist_mod_get_mem(env->mesh->
   mods.mod[m]->get_mem));
  return (*env->mesh->mods.mod[m]->get_mem)(env, m);
 }
 return 0;
}
