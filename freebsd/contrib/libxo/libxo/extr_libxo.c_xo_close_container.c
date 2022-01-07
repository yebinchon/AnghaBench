
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;


 int xo_close_container_h (int *,char const*) ;

xo_ssize_t
xo_close_container (const char *name)
{
    return xo_close_container_h(((void*)0), name);
}
