
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* hx509_env ;
typedef int hx509_context ;
struct TYPE_5__ {TYPE_2__* list; } ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; TYPE_1__ u; int name; } ;


 scalar_t__ env_list ;
 scalar_t__ strcmp (char const*,int ) ;

hx509_env
hx509_env_find_binding(hx509_context context,
         hx509_env env,
         const char *key)
{
    while(env) {
 if (strcmp(key, env->name) == 0 && env->type == env_list)
     return env->u.list;
 env = env->next;
    }
    return ((void*)0);
}
