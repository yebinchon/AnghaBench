
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx_expr {int op; void* arg2; void* arg1; } ;
typedef enum hx_expr_op { ____Placeholder_hx_expr_op } hx_expr_op ;


 struct hx_expr* malloc (int) ;

struct hx_expr *
_hx509_make_expr(enum hx_expr_op op, void *arg1, void *arg2)
{
    struct hx_expr *expr;

    expr = malloc(sizeof(*expr));
    if (expr == ((void*)0))
 return ((void*)0);
    expr->op = op;
    expr->arg1 = arg1;
    expr->arg2 = arg2;

    return expr;
}
