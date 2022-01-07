
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {scalar_t__* modinfo; } ;
struct dns64_env {int dummy; } ;



size_t
dns64_get_mem(struct module_env* env, int id)
{
    struct dns64_env* dns64_env = (struct dns64_env*)env->modinfo[id];
    if (!dns64_env)
        return 0;
    return sizeof(*dns64_env);
}
