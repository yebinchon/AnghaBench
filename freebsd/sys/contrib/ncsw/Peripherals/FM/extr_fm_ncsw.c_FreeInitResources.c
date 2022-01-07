
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resAddr; int h_FmMuram; scalar_t__ fifoBaseAddr; scalar_t__ camBaseAddr; } ;
typedef TYPE_1__ t_Fm ;


 int FM_MURAM_FreeMem (int ,int ) ;
 int UINT_TO_PTR (scalar_t__) ;

__attribute__((used)) static void FreeInitResources(t_Fm *p_Fm)
{
    if (p_Fm->camBaseAddr)
       FM_MURAM_FreeMem(p_Fm->h_FmMuram, UINT_TO_PTR(p_Fm->camBaseAddr));
    if (p_Fm->fifoBaseAddr)
       FM_MURAM_FreeMem(p_Fm->h_FmMuram, UINT_TO_PTR(p_Fm->fifoBaseAddr));
    if (p_Fm->resAddr)
       FM_MURAM_FreeMem(p_Fm->h_FmMuram, UINT_TO_PTR(p_Fm->resAddr));
}
