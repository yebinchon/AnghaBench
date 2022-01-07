
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hx_expr {int dummy; } ;
struct TYPE_2__ {char const* buf; struct hx_expr* expr; int * error; scalar_t__ offset; int length; } ;


 TYPE_1__ _hx509_expr_input ;
 int free (int *) ;
 int strlen (char const*) ;
 int yyparse () ;

struct hx_expr *
_hx509_expr_parse(const char *buf)
{
    _hx509_expr_input.buf = buf;
    _hx509_expr_input.length = strlen(buf);
    _hx509_expr_input.offset = 0;
    _hx509_expr_input.expr = ((void*)0);

    if (_hx509_expr_input.error) {
 free(_hx509_expr_input.error);
 _hx509_expr_input.error = ((void*)0);
    }

    yyparse();

    return _hx509_expr_input.expr;
}
