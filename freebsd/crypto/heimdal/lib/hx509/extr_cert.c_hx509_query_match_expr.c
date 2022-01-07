
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match; int * expr; } ;
typedef TYPE_1__ hx509_query ;
typedef int hx509_context ;


 int HX509_QUERY_MATCH_EXPR ;
 int _hx509_expr_free (int *) ;
 int * _hx509_expr_parse (char const*) ;

int
hx509_query_match_expr(hx509_context context, hx509_query *q, const char *expr)
{
    if (q->expr) {
 _hx509_expr_free(q->expr);
 q->expr = ((void*)0);
    }

    if (expr == ((void*)0)) {
 q->match &= ~HX509_QUERY_MATCH_EXPR;
    } else {
 q->expr = _hx509_expr_parse(expr);
 if (q->expr)
     q->match |= HX509_QUERY_MATCH_EXPR;
    }

    return 0;
}
