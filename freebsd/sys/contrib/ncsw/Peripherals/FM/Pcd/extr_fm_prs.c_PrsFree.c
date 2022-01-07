
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ guestId; int h_Fm; } ;
typedef TYPE_1__ t_FmPcd ;


 int ASSERT_COND (int) ;
 int FmUnregisterIntr (int ,int ,int ,int ) ;
 scalar_t__ NCSW_MASTER_ID ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_INTR_TYPE_NORMAL ;
 int e_FM_MOD_PRS ;

void PrsFree(t_FmPcd *p_FmPcd)
{
    ASSERT_COND(p_FmPcd->guestId == NCSW_MASTER_ID);
    FmUnregisterIntr(p_FmPcd->h_Fm, e_FM_MOD_PRS, 0, e_FM_INTR_TYPE_ERR);

    FmUnregisterIntr(p_FmPcd->h_Fm, e_FM_MOD_PRS, 0, e_FM_INTR_TYPE_NORMAL);
}
