
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int t_Handle ;
typedef int t_FmPcdCcKeyAndNextEngineParams ;
typedef scalar_t__ t_Error ;


 scalar_t__ E_OK ;
 scalar_t__ SetRequiredAction1 (int ,int ,int *,int ,int ,int ) ;
 int UPDATE_CC_SHADOW_CLEAR ;

__attribute__((used)) static t_Error SetRequiredAction(
        t_Handle h_FmPcd, uint32_t requiredAction,
        t_FmPcdCcKeyAndNextEngineParams *p_CcKeyAndNextEngineParamsTmp,
        t_Handle h_AdTmp, uint16_t numOfEntries, t_Handle h_Tree)
{
    t_Error err = SetRequiredAction1(h_FmPcd, requiredAction,
                                     p_CcKeyAndNextEngineParamsTmp, h_AdTmp,
                                     numOfEntries, h_Tree);
    if (err != E_OK)
        return err;
    return SetRequiredAction1(h_FmPcd, UPDATE_CC_SHADOW_CLEAR,
                              p_CcKeyAndNextEngineParamsTmp, h_AdTmp,
                              numOfEntries, h_Tree);
}
