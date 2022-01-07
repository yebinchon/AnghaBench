
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_HcPortDev; } ;
typedef TYPE_1__ t_FmHc ;



t_Handle FmHcGetPort(t_Handle h_FmHc)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    return p_FmHc->h_HcPortDev;
}
