
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int ccKeySizeAccExtraction; int maxNumOfKeys; int h_FmPcd; scalar_t__ maskSupport; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef scalar_t__ t_Error ;


 int DeleteNode (TYPE_1__*) ;
 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 scalar_t__ FmPcdUpdateCcShadow (int ,int,int ) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error CalcAndUpdateCcShadow(t_FmPcdCcNode *p_CcNode,
                                     bool isKeyTblAlloc,
                                     uint32_t *p_MatchTableSize,
                                     uint32_t *p_AdTableSize)
{
    uint32_t shadowSize;
    t_Error err;



    *p_MatchTableSize = p_CcNode->ccKeySizeAccExtraction * sizeof(uint8_t)
            * p_CcNode->maxNumOfKeys;

    if (p_CcNode->maskSupport)
        *p_MatchTableSize *= 2;


    *p_AdTableSize = (uint32_t)((p_CcNode->maxNumOfKeys + 1)
            * FM_PCD_CC_AD_ENTRY_SIZE);
    shadowSize = FM_PCD_CC_AD_ENTRY_SIZE;


    if (isKeyTblAlloc)
        shadowSize += *p_MatchTableSize;


    shadowSize += *p_AdTableSize;


    err = FmPcdUpdateCcShadow(p_CcNode->h_FmPcd, (uint32_t)shadowSize,
                              FM_PCD_CC_AD_TABLE_ALIGN);
    if (err != E_OK)
    {
        DeleteNode(p_CcNode);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("MURAM allocation for CC node shadow"));
    }

    return E_OK;
}
