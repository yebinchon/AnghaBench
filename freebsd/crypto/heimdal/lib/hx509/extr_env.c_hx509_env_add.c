
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_env ;
typedef int hx509_context ;
struct TYPE_6__ {int * string; } ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* name; TYPE_1__ u; int type; } ;


 int ENOMEM ;
 int env_string ;
 int free (TYPE_2__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 TYPE_2__* malloc (int) ;
 void* strdup (char const*) ;

int
hx509_env_add(hx509_context context, hx509_env *env,
       const char *key, const char *value)
{
    hx509_env n;

    n = malloc(sizeof(*n));
    if (n == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }

    n->type = env_string;
    n->next = ((void*)0);
    n->name = strdup(key);
    if (n->name == ((void*)0)) {
 free(n);
 return ENOMEM;
    }
    n->u.string = strdup(value);
    if (n->u.string == ((void*)0)) {
 free(n->name);
 free(n);
 return ENOMEM;
    }


    if (*env) {
 hx509_env e = *env;
 while (e->next)
     e = e->next;
 e->next = n;
    } else
 *env = n;

    return 0;
}
