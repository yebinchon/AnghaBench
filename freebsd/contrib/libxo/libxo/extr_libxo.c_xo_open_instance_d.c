
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;


 int XOF_DTRT ;
 int xo_open_instance_hf (int *,int ,char const*) ;

xo_ssize_t
xo_open_instance_d (const char *name)
{
    return xo_open_instance_hf(((void*)0), XOF_DTRT, name);
}
