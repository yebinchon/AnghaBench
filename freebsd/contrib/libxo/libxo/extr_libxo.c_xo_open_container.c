
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;


 int xo_open_container_hf (int *,int ,char const*) ;

xo_ssize_t
xo_open_container (const char *name)
{
    return xo_open_container_hf(((void*)0), 0, name);
}
