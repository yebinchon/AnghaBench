
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fmpl_gcr; } ;
typedef TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_7__ {TYPE_1__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_2__* p_FmPcdPlcrRegs; } ;


 int FM_PCD_PLCR_GCR_EN ;
 int GET_UINT32 (int ) ;
 int WRITE_UINT32 (int ,int) ;

void PlcrDisable(t_FmPcd *p_FmPcd)
{
    t_FmPcdPlcrRegs *p_Regs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;

    WRITE_UINT32(p_Regs->fmpl_gcr, GET_UINT32(p_Regs->fmpl_gcr) & ~FM_PCD_PLCR_GCR_EN);
}
