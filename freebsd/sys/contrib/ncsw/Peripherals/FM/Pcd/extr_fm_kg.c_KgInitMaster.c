
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ guestId; int exceptions; TYPE_1__* p_FmPcdKg; int h_Fm; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {int schemesIds; scalar_t__ numOfSchemes; struct fman_kg_regs* p_FmPcdKgRegs; } ;


 int ASSERT_COND (int) ;
 scalar_t__ E_OK ;
 int FM_EX_KG_DOUBLE_ECC ;
 int FmEnableRamsEcc (int ) ;
 scalar_t__ FmPcdKgAllocSchemes (TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 int FmRegisterIntr (int ,int ,int ,int ,int ,TYPE_2__*) ;
 int GET_NIA_BMI_AC_ENQ_FRAME (TYPE_2__*) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int NO_MSG ;
 int PcdKgErrorException ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_MOD_KG ;
 int fman_kg_enable_scheme_interrupts (struct fman_kg_regs*) ;
 int fman_kg_init (struct fman_kg_regs*,int,int ) ;

__attribute__((used)) static t_Error KgInitMaster(t_FmPcd *p_FmPcd)
{
    t_Error err = E_OK;
    struct fman_kg_regs *p_Regs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    ASSERT_COND(p_FmPcd->guestId == NCSW_MASTER_ID);

    if (p_FmPcd->exceptions & FM_EX_KG_DOUBLE_ECC)
        FmEnableRamsEcc(p_FmPcd->h_Fm);

    fman_kg_init(p_Regs, p_FmPcd->exceptions, GET_NIA_BMI_AC_ENQ_FRAME(p_FmPcd));


    FmRegisterIntr(p_FmPcd->h_Fm,
                   e_FM_MOD_KG,
                   0,
                   e_FM_INTR_TYPE_ERR,
                   PcdKgErrorException,
                   p_FmPcd);

    fman_kg_enable_scheme_interrupts(p_Regs);

    if (p_FmPcd->p_FmPcdKg->numOfSchemes)
    {
        err = FmPcdKgAllocSchemes(p_FmPcd,
                                  p_FmPcd->p_FmPcdKg->numOfSchemes,
                                  p_FmPcd->guestId,
                                  p_FmPcd->p_FmPcdKg->schemesIds);
        if (err)
            RETURN_ERROR(MINOR, err, NO_MSG);
    }

    return E_OK;
}
