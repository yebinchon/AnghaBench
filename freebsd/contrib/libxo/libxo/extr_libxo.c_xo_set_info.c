
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ xi_name; } ;
typedef TYPE_1__ xo_info_t ;
struct TYPE_8__ {int xo_info_count; TYPE_1__* xo_info; } ;
typedef TYPE_2__ xo_handle_t ;


 TYPE_2__* xo_default (TYPE_2__*) ;

void
xo_set_info (xo_handle_t *xop, xo_info_t *infop, int count)
{
    xop = xo_default(xop);

    if (count < 0 && infop) {
 xo_info_t *xip;

 for (xip = infop, count = 0; xip->xi_name; xip++, count++)
     continue;
    }

    xop->xo_info = infop;
    xop->xo_info_count = count;
}
