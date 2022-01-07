
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int ** modinfo; } ;
struct dns64_env {int ignore_aaaa; } ;


 int free (int *) ;
 int free_ignore_aaaa_node ;
 int traverse_postorder (int *,int ,int *) ;

void
dns64_deinit(struct module_env* env, int id)
{
    struct dns64_env* dns64_env;
    if (!env)
        return;
    dns64_env = (struct dns64_env*)env->modinfo[id];
    if(dns64_env) {
     traverse_postorder(&dns64_env->ignore_aaaa, free_ignore_aaaa_node,
      ((void*)0));
    }
    free(env->modinfo[id]);
    env->modinfo[id] = ((void*)0);
}
