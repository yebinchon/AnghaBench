
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 TYPE_1__ _hx509_expr_input ;
 int free (scalar_t__) ;
 scalar_t__ strdup (char const*) ;

void
_hx509_sel_yyerror (const char *s)
{
     if (_hx509_expr_input.error)
         free(_hx509_expr_input.error);

     _hx509_expr_input.error = strdup(s);
}
