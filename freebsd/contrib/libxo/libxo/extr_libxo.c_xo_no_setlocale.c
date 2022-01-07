
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xo_locale_inited ;

void
xo_no_setlocale (void)
{
    xo_locale_inited = 1;
}
