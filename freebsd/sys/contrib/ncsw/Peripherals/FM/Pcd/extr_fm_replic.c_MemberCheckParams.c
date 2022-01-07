
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_4__ {scalar_t__ nextEngine; } ;
typedef TYPE_1__ t_FmPcdCcNextEngineParams ;
typedef scalar_t__ t_Error ;


 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ ValidateNextEngineParams (int ,TYPE_1__*,int ) ;
 int e_FM_PCD_CC_STATS_MODE_NONE ;
 scalar_t__ e_FM_PCD_DONE ;
 scalar_t__ e_FM_PCD_KG ;
 scalar_t__ e_FM_PCD_PLCR ;

__attribute__((used)) static t_Error MemberCheckParams(t_Handle h_FmPcd,
                                 t_FmPcdCcNextEngineParams *p_MemberParams)
{
    t_Error err;


    if ((p_MemberParams->nextEngine != e_FM_PCD_DONE) &&
        (p_MemberParams->nextEngine != e_FM_PCD_KG) &&
        (p_MemberParams->nextEngine != e_FM_PCD_PLCR))
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("Next engine of a member should be MatchTable(cc) or Done or Policer"));


    err = ValidateNextEngineParams(h_FmPcd, p_MemberParams, e_FM_PCD_CC_STATS_MODE_NONE);
    if (err)
        RETURN_ERROR(MAJOR, err, ("member next engine parameters"));

    return E_OK;
}
