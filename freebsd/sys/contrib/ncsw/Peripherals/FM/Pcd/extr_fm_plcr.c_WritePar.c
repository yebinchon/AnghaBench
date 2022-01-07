
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int fmpl_par; } ;
typedef TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_7__ {int h_Fm; TYPE_1__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_5__ {TYPE_2__* p_FmPcdPlcrRegs; } ;


 int ASSERT_COND (int ) ;
 int FM_PCD_PLCR_PAR_GO ;
 int FmIsMaster (int ) ;
 int GET_UINT32 (int ) ;
 int WRITE_UINT32 (int ,int ) ;

__attribute__((used)) static void WritePar(t_FmPcd *p_FmPcd, uint32_t par)
{
    t_FmPcdPlcrRegs *p_FmPcdPlcrRegs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;

    ASSERT_COND(FmIsMaster(p_FmPcd->h_Fm));
    WRITE_UINT32(p_FmPcdPlcrRegs->fmpl_par, par);

    while (GET_UINT32(p_FmPcdPlcrRegs->fmpl_par) & FM_PCD_PLCR_PAR_GO) ;
}
