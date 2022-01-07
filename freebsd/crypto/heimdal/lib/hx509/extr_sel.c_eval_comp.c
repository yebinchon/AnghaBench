
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hx_expr {int op; struct hx_expr* arg2; struct hx_expr* arg1; } ;
typedef TYPE_2__* hx509_env ;
typedef int hx509_context ;
struct TYPE_7__ {char const* string; } ;
struct TYPE_8__ {char const* name; struct TYPE_8__* next; TYPE_1__ u; int type; } ;


 int FALSE ;
 int TRUE ;
 int _hx509_abort (char*,int) ;




 int env_string ;
 char* eval_word (int ,TYPE_2__*,struct hx_expr*) ;
 int const expr_VAR ;
 int const expr_WORDS ;
 TYPE_2__* find_variable (int ,TYPE_2__*,struct hx_expr*) ;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
eval_comp(hx509_context context, hx509_env env, struct hx_expr *expr)
{
    switch (expr->op) {
    case 129:
    case 131:
    case 128: {
 const char *s1, *s2;
 int ret;

 s1 = eval_word(context, env, expr->arg1);
 s2 = eval_word(context, env, expr->arg2);

 if (s1 == ((void*)0) || s2 == ((void*)0))
     return FALSE;

 if (expr->op == 128) {
     size_t len1 = strlen(s1);
     size_t len2 = strlen(s2);

     if (len1 < len2)
  return 0;
     ret = strcmp(s1 + (len1 - len2), s2) == 0;
 } else {
     ret = strcmp(s1, s2) == 0;
     if (expr->op == 129)
  ret = !ret;
 }
 return ret;
    }
    case 130: {
 struct hx_expr *subexpr;
 const char *w, *s1;

 w = eval_word(context, env, expr->arg1);

 subexpr = expr->arg2;

 if (subexpr->op == expr_WORDS) {
     while (subexpr) {
  s1 = eval_word(context, env, subexpr->arg1);
  if (strcmp(w, s1) == 0)
      return TRUE;
  subexpr = subexpr->arg2;
     }
 } else if (subexpr->op == expr_VAR) {
     hx509_env subenv;

     subenv = find_variable(context, env, subexpr);
     if (subenv == ((void*)0))
  return FALSE;

     while (subenv) {
  if (subenv->type != env_string)
      continue;
  if (strcmp(w, subenv->name) == 0)
      return TRUE;
  if (strcmp(w, subenv->u.string) == 0)
      return TRUE;
  subenv = subenv->next;
     }

 } else
     _hx509_abort("hx509 eval IN unknown op: %d", (int)subexpr->op);

 return FALSE;
    }
    default:
 _hx509_abort("hx509 eval expr with unknown op: %d", (int)expr->op);
    }
    return FALSE;
}
