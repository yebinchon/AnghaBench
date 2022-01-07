
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_env ;
typedef int hx509_context ;
struct TYPE_4__ {char const* string; } ;
struct TYPE_5__ {char* name; scalar_t__ type; struct TYPE_5__* next; TYPE_1__ u; } ;


 scalar_t__ env_string ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

const char *
hx509_env_lfind(hx509_context context, hx509_env env,
  const char *key, size_t len)
{
    while(env) {
 if (strncmp(key, env->name ,len) == 0
     && env->name[len] == '\0' && env->type == env_string)
     return env->u.string;
 env = env->next;
    }
    return ((void*)0);
}
