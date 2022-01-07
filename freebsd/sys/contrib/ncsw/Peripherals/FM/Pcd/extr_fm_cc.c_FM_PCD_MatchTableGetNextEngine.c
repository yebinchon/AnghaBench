
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_8__ {int numOfKeys; TYPE_1__* keyAndNextEngineParams; } ;
typedef TYPE_2__ t_FmPcdCcNode ;
typedef TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef int t_Error ;
struct TYPE_7__ {int nextEngineParams; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_NULL_POINTER ;
 int E_OK ;
 int FM_PCD_MAX_NUM_OF_KEYS ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int memcpy (TYPE_2__*,int *,int) ;

t_Error FM_PCD_MatchTableGetNextEngine(
        t_Handle h_CcNode, uint16_t keyIndex,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;

    SANITY_CHECK_RETURN_ERROR(p_CcNode, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPcdCcNextEngineParams, E_NULL_POINTER);

    if (keyIndex >= p_CcNode->numOfKeys)
        RETURN_ERROR(MAJOR, E_INVALID_STATE,
                     ("keyIndex exceeds current number of keys"));

    if (keyIndex > (FM_PCD_MAX_NUM_OF_KEYS - 1))
        RETURN_ERROR(
                MAJOR,
                E_INVALID_VALUE,
                ("keyIndex can not be larger than %d", (FM_PCD_MAX_NUM_OF_KEYS - 1)));

    memcpy(p_FmPcdCcNextEngineParams,
           &p_CcNode->keyAndNextEngineParams[keyIndex].nextEngineParams,
           sizeof(t_FmPcdCcNextEngineParams));

    return E_OK;
}
