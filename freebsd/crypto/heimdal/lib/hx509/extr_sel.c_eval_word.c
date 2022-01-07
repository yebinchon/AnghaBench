
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx_expr {int op; char const* arg1; struct hx_expr* arg2; } ;
typedef int * hx509_env ;
typedef int hx509_context ;




 char const* hx509_env_find (int ,int *,char const*) ;
 int * hx509_env_find_binding (int ,int *,char const*) ;

__attribute__((used)) static const char *
eval_word(hx509_context context, hx509_env env, struct hx_expr *word)
{
    switch (word->op) {
    case 129:
 return word->arg1;
    case 128:
 if (word->arg2 == ((void*)0))
     return hx509_env_find(context, env, word->arg1);

 env = hx509_env_find_binding(context, env, word->arg1);
 if (env == ((void*)0))
     return ((void*)0);

 return eval_word(context, env, word->arg2);
    default:
 return ((void*)0);
    }
}
