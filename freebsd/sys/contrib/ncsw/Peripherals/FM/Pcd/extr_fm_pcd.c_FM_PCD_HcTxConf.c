
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_DpaaFD ;


 int E_INVALID_STATE ;
 int FmHcTxConf (int ,int *) ;
 int SANITY_CHECK_RETURN (scalar_t__,int ) ;

void FM_PCD_HcTxConf(t_Handle h_FmPcd, t_DpaaFD *p_Fd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    SANITY_CHECK_RETURN(h_FmPcd, E_INVALID_STATE);

    FmHcTxConf(p_FmPcd->h_Hc, p_Fd);
}
