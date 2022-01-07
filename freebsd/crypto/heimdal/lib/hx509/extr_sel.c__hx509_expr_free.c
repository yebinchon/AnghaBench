
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx_expr {int op; struct hx_expr* arg2; struct hx_expr* arg1; } ;







 int free (struct hx_expr*) ;

void
_hx509_expr_free(struct hx_expr *expr)
{
    switch (expr->op) {
    case 130:
    case 131:
 free(expr->arg1);
 break;
    case 128:
    case 132:
    case 129:
 free(expr->arg1);
 if (expr->arg2)
     _hx509_expr_free(expr->arg2);
 break;
    default:
 if (expr->arg1)
     _hx509_expr_free(expr->arg1);
 if (expr->arg2)
     _hx509_expr_free(expr->arg2);
 break;
    }
    free(expr);
}
