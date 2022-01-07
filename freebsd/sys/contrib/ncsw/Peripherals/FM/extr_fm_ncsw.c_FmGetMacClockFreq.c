
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {TYPE_1__* p_FmStateStruct; } ;
typedef TYPE_2__ t_Fm ;
struct TYPE_3__ {int fmMacClkFreq; } ;



uint16_t FmGetMacClockFreq(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    return p_Fm->p_FmStateStruct->fmMacClkFreq;
}
