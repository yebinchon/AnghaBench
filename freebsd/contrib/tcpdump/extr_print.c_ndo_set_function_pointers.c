
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndo_warning; int ndo_error; int ndo_printf; int ndo_default_print; } ;
typedef TYPE_1__ netdissect_options ;


 int ndo_default_print ;
 int ndo_error ;
 int ndo_printf ;
 int ndo_warning ;

void
ndo_set_function_pointers(netdissect_options *ndo)
{
 ndo->ndo_default_print=ndo_default_print;
 ndo->ndo_printf=ndo_printf;
 ndo->ndo_error=ndo_error;
 ndo->ndo_warning=ndo_warning;
}
