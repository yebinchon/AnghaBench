
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;


 int xo_open_marker_h (int *,char const*) ;

xo_ssize_t
xo_open_marker (const char *name)
{
    return xo_open_marker_h(((void*)0), name);
}
