
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;


 scalar_t__ FmHcGetPort (int ) ;

t_Handle FM_PCD_GetHcPort(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    return FmHcGetPort(p_FmPcd->h_Hc);
}
