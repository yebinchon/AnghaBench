
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_FmStateStruct; struct fman_fpm_regs* p_FmFpmRegs; } ;
typedef TYPE_1__ t_Fm ;
struct fman_fpm_regs {int dummy; } ;
struct TYPE_6__ {int enabledTimeStamp; int fmClkFreq; struct TYPE_6__* count1MicroBit; } ;


 int ASSERT_COND (TYPE_2__*) ;
 int TRUE ;
 int fman_enable_time_stamp (struct fman_fpm_regs*,TYPE_2__*,int ) ;

__attribute__((used)) static void EnableTimeStamp(t_Fm *p_Fm)
{
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    ASSERT_COND(p_Fm->p_FmStateStruct);
    ASSERT_COND(p_Fm->p_FmStateStruct->count1MicroBit);

    fman_enable_time_stamp(fpm_rg, p_Fm->p_FmStateStruct->count1MicroBit, p_Fm->p_FmStateStruct->fmClkFreq);

    p_Fm->p_FmStateStruct->enabledTimeStamp = TRUE;
}
