
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kadm5_pw_policy_check_func {char* name; } ;
typedef int krb5_context ;
struct TYPE_4__ {struct kadm5_pw_policy_check_func* funcs; } ;
struct TYPE_3__ {char* name; struct kadm5_pw_policy_check_func* funcs; } ;


 TYPE_2__ builtin_verifier ;
 int free (char*) ;
 char* malloc (size_t) ;
 int num_verifiers ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (char*,char const*,size_t) ;
 TYPE_1__** verifiers ;

__attribute__((used)) static const struct kadm5_pw_policy_check_func *
find_func(krb5_context context, const char *name)
{
    const struct kadm5_pw_policy_check_func *f;
    char *module = ((void*)0);
    const char *p, *func;
    int i;

    p = strchr(name, ':');
    if (p) {
 size_t len = p - name + 1;
 func = p + 1;
 module = malloc(len);
 if (module == ((void*)0))
     return ((void*)0);
 strlcpy(module, name, len);
    } else
 func = name;


    for (i = 0; i < num_verifiers; i++) {
 if (module && strcmp(module, verifiers[i]->name) != 0)
     continue;
 for (f = verifiers[i]->funcs; f->name ; f++)
     if (strcmp(func, f->name) == 0) {
  if (module)
      free(module);
  return f;
     }
    }

    if (module == ((void*)0) || strcmp(module, "builtin") == 0) {
 for (f = builtin_verifier.funcs; f->name ; f++)
     if (strcmp(func, f->name) == 0) {
  if (module)
      free(module);
  return f;
     }
    }
    if (module)
 free(module);
    return ((void*)0);
}
