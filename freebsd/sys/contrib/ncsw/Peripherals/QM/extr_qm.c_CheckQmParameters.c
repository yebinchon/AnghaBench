
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ partCgsBase; scalar_t__ partNumOfCgs; scalar_t__ guestId; int f_Exception; TYPE_1__* p_QmDriverParams; } ;
typedef TYPE_2__ t_Qm ;
typedef int t_Error ;
struct TYPE_4__ {scalar_t__ partFqidBase; scalar_t__ partNumOfFqids; int rtFramesDepth; int totalNumOfFqids; int swPortalsBaseAddress; } ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int MAJOR ;
 int MEGABYTE ;
 scalar_t__ NCSW_MASTER_ID ;
 scalar_t__ QM_MAX_NUM_OF_CGS ;
 scalar_t__ QM_MAX_NUM_OF_FQIDS ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UINT_TO_PTR (int ) ;
 int XX_VirtToPhys (int ) ;

__attribute__((used)) static t_Error CheckQmParameters(t_Qm *p_Qm)
{
    if ((p_Qm->p_QmDriverParams->partFqidBase + p_Qm->p_QmDriverParams->partNumOfFqids) > QM_MAX_NUM_OF_FQIDS)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("partFqidBase+partNumOfFqids out of range!!!"));
    if ((p_Qm->partCgsBase + p_Qm->partNumOfCgs) > QM_MAX_NUM_OF_CGS)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("partCgsBase+partNumOfCgs out of range!!!"));

    if (p_Qm->guestId == NCSW_MASTER_ID)
    {
        uint64_t phyAddr;

        phyAddr = XX_VirtToPhys(UINT_TO_PTR(p_Qm->p_QmDriverParams->swPortalsBaseAddress));

        if (phyAddr & 0x00000000001fffffLL)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("swPortalsBaseAddress isn't properly aligned"));
        if (!p_Qm->p_QmDriverParams->rtFramesDepth)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("rtFramesDepth must be larger than '0'!!!"));
        if (p_Qm->p_QmDriverParams->rtFramesDepth > ((16*MEGABYTE)*3))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("rtFramesDepth must be equal or smaller than 48MB!!!"));
        if (!p_Qm->p_QmDriverParams->totalNumOfFqids)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("totalNumOfFqids must be larger than '0'!!!"));
        if (p_Qm->p_QmDriverParams->totalNumOfFqids > (16*MEGABYTE))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("totalNumOfFqids must be equal or smaller than 16MB!!!"));
        if(!p_Qm->f_Exception)
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exceptions callback not provided"));
    }

    return E_OK;
}
