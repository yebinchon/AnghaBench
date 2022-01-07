
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {scalar_t__ edns_known_options_num; int * edns_known_options; } ;


 int free (int *) ;

void
edns_known_options_delete(struct module_env* env)
{
 free(env->edns_known_options);
 env->edns_known_options = ((void*)0);
 env->edns_known_options_num = 0;
}
