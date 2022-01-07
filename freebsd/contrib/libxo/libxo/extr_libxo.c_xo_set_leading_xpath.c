
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * xo_leading_xpath; } ;
typedef TYPE_1__ xo_handle_t ;


 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_free (int *) ;
 int * xo_strndup (char const*,int) ;

void
xo_set_leading_xpath (xo_handle_t *xop, const char *path)
{
    xop = xo_default(xop);

    if (xop->xo_leading_xpath) {
 xo_free(xop->xo_leading_xpath);
 xop->xo_leading_xpath = ((void*)0);
    }

    if (path == ((void*)0))
 return;

    xop->xo_leading_xpath = xo_strndup(path, -1);
}
