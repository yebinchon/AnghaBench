
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {size_t partCgsBase; size_t partNumOfCgs; scalar_t__* cgsUsed; } ;
typedef TYPE_1__ t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_BUSY ;
 int E_OK ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 scalar_t__ TRUE ;

t_Error QmGetCgId(t_Handle h_Qm, uint8_t *p_CgId)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;
    uint16_t i;

    for(i = p_Qm->partCgsBase;i<p_Qm->partCgsBase+p_Qm->partNumOfCgs;i++)
        if (!p_Qm->cgsUsed[i])
        {
            p_Qm->cgsUsed[i] = (uint8_t)TRUE;
            *p_CgId = (uint8_t)i;
            break;
        }
    if(i == (p_Qm->partCgsBase+p_Qm->partNumOfCgs))
        RETURN_ERROR(MINOR, E_BUSY, ("No available CG"));
    else
        return E_OK;
}
