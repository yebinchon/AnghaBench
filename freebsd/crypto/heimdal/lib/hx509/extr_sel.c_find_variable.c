
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx_expr {scalar_t__ op; struct hx_expr* arg2; int arg1; } ;
typedef int * hx509_env ;
typedef int hx509_context ;


 int assert (int) ;
 scalar_t__ expr_VAR ;
 int * hx509_env_find_binding (int ,int *,int ) ;

__attribute__((used)) static hx509_env
find_variable(hx509_context context, hx509_env env, struct hx_expr *word)
{
    assert(word->op == expr_VAR);

    if (word->arg2 == ((void*)0))
 return hx509_env_find_binding(context, env, word->arg1);

    env = hx509_env_find_binding(context, env, word->arg1);
    if (env == ((void*)0))
 return ((void*)0);
    return find_variable(context, env, word->arg2);
}
