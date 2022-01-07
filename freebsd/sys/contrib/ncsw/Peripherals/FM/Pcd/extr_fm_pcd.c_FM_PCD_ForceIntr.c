
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_10__ {scalar_t__ guestId; int exceptions; TYPE_4__* p_FmPcdPlcr; TYPE_2__* p_FmPcdKg; int p_FmPcdPrs; int p_FmPcdDriverParam; } ;
typedef TYPE_5__ t_FmPcd ;
typedef int t_Error ;
typedef int e_FmPcdExceptions ;
struct TYPE_9__ {TYPE_3__* p_FmPcdPlcrRegs; } ;
struct TYPE_8__ {int fmpl_ifr; int fmpl_eifr; } ;
struct TYPE_7__ {TYPE_1__* p_FmPcdKgRegs; } ;
struct TYPE_6__ {int fmkg_feer; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_EX_KG_DOUBLE_ECC ;
 int FM_EX_KG_KEYSIZE_OVERFLOW ;
 int FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE ;
 int FM_PCD_EX_PLCR_DOUBLE_ECC ;
 int FM_PCD_EX_PLCR_INIT_ENTRY_ERROR ;
 int FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE ;
 int FM_PCD_EX_PRS_DOUBLE_ECC ;
 int FM_PCD_EX_PRS_SINGLE_ECC ;
 int FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE ;
 int FM_PCD_PLCR_DOUBLE_ECC ;
 int FM_PCD_PLCR_INIT_ENTRY_ERROR ;
 int FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int WRITE_UINT32 (int ,int) ;
t_Error FM_PCD_ForceIntr (t_Handle h_FmPcd, e_FmPcdExceptions exception)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    SANITY_CHECK_RETURN_ERROR(h_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(!p_FmPcd->p_FmPcdDriverParam, E_INVALID_STATE);

    if (p_FmPcd->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ForceIntr - guest mode!"));

    switch (exception)
    {
        case (135):
        case (134):
            if (!p_FmPcd->p_FmPcdKg)
                RETURN_ERROR(MINOR, E_INVALID_STATE, ("Can't ask for this interrupt - keygen is not working"));
            break;
        case (132):
        case (131):
        case (130):
        case (133):
            if (!p_FmPcd->p_FmPcdPlcr)
                RETURN_ERROR(MINOR, E_INVALID_STATE, ("Can't ask for this interrupt - policer is not working"));
            break;
        case (129):
        case (128):
           if (!p_FmPcd->p_FmPcdPrs)
                RETURN_ERROR(MINOR, E_INVALID_STATE, ("Can't ask for this interrupt -parsrer is not working"));
            break;
        default:
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Invalid interrupt requested"));
    }
    switch (exception)
    {
        case 129:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PRS_DOUBLE_ECC))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            break;
        case 128:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PRS_SINGLE_ECC))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            break;
        case 135:
            if (!(p_FmPcd->exceptions & FM_EX_KG_DOUBLE_ECC))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs->fmkg_feer, FM_EX_KG_DOUBLE_ECC);
            break;
        case 134:
            if (!(p_FmPcd->exceptions & FM_EX_KG_KEYSIZE_OVERFLOW))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs->fmkg_feer, FM_EX_KG_KEYSIZE_OVERFLOW);
            break;
        case 132:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PLCR_DOUBLE_ECC))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr, FM_PCD_PLCR_DOUBLE_ECC);
            break;
        case 131:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PLCR_INIT_ENTRY_ERROR))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_eifr, FM_PCD_PLCR_INIT_ENTRY_ERROR);
            break;
        case 130:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr, FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE);
            break;
        case 133:
            if (!(p_FmPcd->exceptions & FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE))
                RETURN_ERROR(MINOR, E_NOT_SUPPORTED, ("The selected exception is masked"));
            WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->fmpl_ifr, FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE);
            break;
    }

    return E_OK;
}
