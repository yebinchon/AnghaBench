
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_16__ {size_t clsPlanGrpId; size_t netEnvId; scalar_t__ grpExists; } ;
typedef TYPE_2__ t_FmPcdKgInterModuleClsPlanSet ;
typedef TYPE_2__ t_FmPcdKgInterModuleClsPlanGrpParams ;
struct TYPE_17__ {int optArray; int owners; } ;
typedef TYPE_4__ t_FmPcdKgClsPlanGrp ;
struct TYPE_18__ {TYPE_1__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef TYPE_5__ t_FmPcd ;
typedef scalar_t__ t_Error ;
typedef int protocolOpt_t ;
typedef int grpParams ;
struct TYPE_15__ {size_t emptyClsPlanGrpId; TYPE_4__* clsPlanGrps; } ;


 scalar_t__ BindPortToClsPlanGrp (TYPE_5__*,size_t,size_t) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int FALSE ;
 int FM_PCD_MAX_NUM_OF_CLS_PLANS ;
 int FM_PCD_MAX_NUM_OF_OPTIONS (int ) ;
 scalar_t__ FmHcPcdKgSetClsPlan (scalar_t__,TYPE_2__*) ;
 scalar_t__ FmPcdKgBuildClsPlanGrp (scalar_t__,TYPE_2__*,TYPE_2__*) ;
 size_t ILLEGAL_CLS_PLAN ;
 int KgSetClsPlan (TYPE_5__*,TYPE_2__*) ;
 int MAJOR ;
 int MINOR ;
 char* NO_MSG ;
 scalar_t__ PcdGetClsPlanGrpParams (scalar_t__,TYPE_2__*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int TRUE ;
 int XX_Free (TYPE_2__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmPcdKgSetOrBindToClsPlanGrp(t_Handle h_FmPcd, uint8_t hardwarePortId, uint8_t netEnvId, protocolOpt_t *p_OptArray, uint8_t *p_ClsPlanGrpId, bool *p_IsEmptyClsPlanGrp)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_FmPcdKgInterModuleClsPlanGrpParams grpParams, *p_GrpParams;
    t_FmPcdKgClsPlanGrp *p_ClsPlanGrp;
    t_FmPcdKgInterModuleClsPlanSet *p_ClsPlanSet;
    t_Error err;




    memset(&grpParams, 0, sizeof(grpParams));
    grpParams.clsPlanGrpId = ILLEGAL_CLS_PLAN;
    p_GrpParams = &grpParams;

    p_GrpParams->netEnvId = netEnvId;



    err = PcdGetClsPlanGrpParams(h_FmPcd, p_GrpParams);
    if (err)
        RETURN_ERROR(MINOR,err,NO_MSG);

    if (p_GrpParams->grpExists)
    {

        *p_ClsPlanGrpId = p_GrpParams->clsPlanGrpId;
    }
    else
    {
        p_ClsPlanSet = (t_FmPcdKgInterModuleClsPlanSet *)XX_Malloc(sizeof(t_FmPcdKgInterModuleClsPlanSet));
        if (!p_ClsPlanSet)
            RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Classification plan set"));
        memset(p_ClsPlanSet, 0, sizeof(t_FmPcdKgInterModuleClsPlanSet));

        err = FmPcdKgBuildClsPlanGrp(h_FmPcd, p_GrpParams, p_ClsPlanSet);
        if (err)
        {
            XX_Free(p_ClsPlanSet);
            RETURN_ERROR(MINOR, err, NO_MSG);
        }
        *p_ClsPlanGrpId = p_GrpParams->clsPlanGrpId;

        if (p_FmPcd->h_Hc)
        {

            err = FmHcPcdKgSetClsPlan(p_FmPcd->h_Hc, p_ClsPlanSet);
            if (err)
            {
                XX_Free(p_ClsPlanSet);
                RETURN_ERROR(MAJOR, err, NO_MSG);
            }
        }
        else

            KgSetClsPlan(p_FmPcd, p_ClsPlanSet);

        XX_Free(p_ClsPlanSet);
    }




    if (*p_ClsPlanGrpId == p_FmPcd->p_FmPcdKg->emptyClsPlanGrpId)
        *p_IsEmptyClsPlanGrp = TRUE;
    else
        *p_IsEmptyClsPlanGrp = FALSE;

    p_ClsPlanGrp = &p_FmPcd->p_FmPcdKg->clsPlanGrps[*p_ClsPlanGrpId];


    p_ClsPlanGrp->owners++;


    memcpy(p_OptArray, &p_FmPcd->p_FmPcdKg->clsPlanGrps[*p_ClsPlanGrpId].optArray, FM_PCD_MAX_NUM_OF_OPTIONS(FM_PCD_MAX_NUM_OF_CLS_PLANS)*sizeof(protocolOpt_t));


    err = BindPortToClsPlanGrp(p_FmPcd, hardwarePortId, p_GrpParams->clsPlanGrpId);
    if (err)
        RETURN_ERROR(MINOR, err, NO_MSG);

    return E_OK;
}
