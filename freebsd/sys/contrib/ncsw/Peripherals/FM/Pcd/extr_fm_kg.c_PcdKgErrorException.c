
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int h_App; int (* f_Exception ) (int ,int ) ;int (* f_FmPcdIndexedException ) (int ,int ,int ) ;TYPE_1__* p_FmPcdKg; int h_Fm; } ;
typedef TYPE_2__ t_FmPcd ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_3__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;


 int ASSERT_COND (int ) ;
 int FM_EX_KG_DOUBLE_ECC ;
 int FM_EX_KG_KEYSIZE_OVERFLOW ;
 int FmIsMaster (int ) ;
 int e_FM_PCD_KG_EXCEPTION_DOUBLE_ECC ;
 int e_FM_PCD_KG_EXCEPTION_KEYSIZE_OVERFLOW ;
 int fman_kg_get_event (struct fman_kg_regs*,int*,int*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void PcdKgErrorException(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    uint32_t event,schemeIndexes = 0, index = 0;
    struct fman_kg_regs *p_KgRegs;

    ASSERT_COND(FmIsMaster(p_FmPcd->h_Fm));
    p_KgRegs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;
    fman_kg_get_event(p_KgRegs, &event, &schemeIndexes);

    if (event & FM_EX_KG_DOUBLE_ECC)
        p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_KG_EXCEPTION_DOUBLE_ECC);
    if (event & FM_EX_KG_KEYSIZE_OVERFLOW)
    {
        if (schemeIndexes)
        {
            while (schemeIndexes)
            {
                if (schemeIndexes & 0x1)
                    p_FmPcd->f_FmPcdIndexedException(p_FmPcd->h_App,e_FM_PCD_KG_EXCEPTION_KEYSIZE_OVERFLOW, (uint16_t)(31 - index));
                schemeIndexes >>= 1;
                index+=1;
            }
        }
        else
            p_FmPcd->f_Exception(p_FmPcd->h_App,e_FM_PCD_KG_EXCEPTION_KEYSIZE_OVERFLOW);
    }
}
