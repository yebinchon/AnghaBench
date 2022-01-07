
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 int xo_name_to_style (char const*) ;
 int xo_set_style (int *,int) ;

int
xo_set_style_name (xo_handle_t *xop, const char *name)
{
    if (name == ((void*)0))
 return -1;

    int style = xo_name_to_style(name);

    if (style < 0)
 return -1;

    xo_set_style(xop, style);
    return 0;
}
