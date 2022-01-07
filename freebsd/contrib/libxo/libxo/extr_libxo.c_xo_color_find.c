
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* xo_color_names ;
 scalar_t__ xo_streq (scalar_t__,char const*) ;

__attribute__((used)) static int
xo_color_find (const char *str)
{
    int i;

    for (i = 0; xo_color_names[i]; i++) {
 if (xo_streq(xo_color_names[i], str))
     return i;
    }

    return -1;
}
