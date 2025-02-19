
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef TYPE_6__* t_Handle ;
struct TYPE_26__ {scalar_t__ h_Scheme; scalar_t__ relativeSchemeId; } ;
struct TYPE_27__ {TYPE_4__ capwap; } ;
struct TYPE_28__ {TYPE_5__ reassmParams; } ;
typedef TYPE_6__ t_FmPcdManip ;
struct TYPE_25__ {void* update; } ;
struct TYPE_24__ {scalar_t__ relativeSchemeId; } ;
struct TYPE_23__ {TYPE_6__* h_NetEnv; } ;
struct TYPE_29__ {void* bypassFqidGeneration; TYPE_3__ schemeCounter; TYPE_2__ id; TYPE_1__ netEnvParams; } ;
typedef TYPE_8__ t_FmPcdKgSchemeParams ;
typedef TYPE_6__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_6__*) ;
 int E_NO_MEMORY ;
 int E_OK ;
 scalar_t__ FM_PCD_KgSchemeSet (TYPE_6__*,TYPE_8__*) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 void* TRUE ;
 int XX_Free (TYPE_8__*) ;
 TYPE_8__* XX_Malloc (int) ;
 int memset (TYPE_8__*,int ,int) ;
 int setCapwapReassmSchemeParams (TYPE_6__*,TYPE_8__*,TYPE_6__*,scalar_t__) ;

t_Error FmPcdManipBuildCapwapReassmScheme(t_FmPcd *p_FmPcd, t_Handle h_NetEnv,
                                          t_Handle h_CcTree, t_Handle h_Manip,
                                          uint8_t groupId)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;
    t_FmPcdKgSchemeParams *p_SchemeParams = ((void*)0);

    ASSERT_COND(p_FmPcd);
    ASSERT_COND(h_NetEnv);
    ASSERT_COND(p_Manip);


    if (p_Manip->reassmParams.capwap.h_Scheme)
        return E_OK;

    p_SchemeParams = XX_Malloc(sizeof(t_FmPcdKgSchemeParams));
    if (!p_SchemeParams)
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("Memory allocation failed for scheme"));

    memset(p_SchemeParams, 0, sizeof(t_FmPcdKgSchemeParams));
    p_SchemeParams->netEnvParams.h_NetEnv = h_NetEnv;
    p_SchemeParams->id.relativeSchemeId =
            (uint8_t)p_Manip->reassmParams.capwap.relativeSchemeId;
    p_SchemeParams->schemeCounter.update = TRUE;
    p_SchemeParams->bypassFqidGeneration = TRUE;

    setCapwapReassmSchemeParams(p_FmPcd, p_SchemeParams, h_CcTree, groupId);

    p_Manip->reassmParams.capwap.h_Scheme = FM_PCD_KgSchemeSet(p_FmPcd,
                                                               p_SchemeParams);

    XX_Free(p_SchemeParams);

    return E_OK;
}
