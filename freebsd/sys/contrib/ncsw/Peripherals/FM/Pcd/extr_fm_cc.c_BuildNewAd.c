
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int * t_Handle ;
struct TYPE_16__ {int p_AdTableNew; int p_KeysMatchTableNew; int numOfKeys; } ;
typedef TYPE_4__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_17__ {int h_FmPcd; int * h_Ad; int p_GlblMask; int glblMaskSize; int sizeOfExtraction; int ccKeySizeAccExtraction; int ctrlFlow; int prsArrayOffset; int offset; int parseCode; int lclMask; int h_AdTable; int h_KeysMatchTable; int numOfKeys; } ;
typedef TYPE_5__ t_FmPcdCcNode ;
struct TYPE_14__ {int * h_FrmReplic; } ;
struct TYPE_13__ {int h_CcNode; } ;
struct TYPE_15__ {TYPE_2__ frParams; TYPE_1__ ccParams; } ;
struct TYPE_18__ {scalar_t__ nextEngine; TYPE_3__ params; int * h_Manip; } ;
typedef TYPE_6__ t_FmPcdCcNextEngineParams ;


 scalar_t__ AllocAndFillAdForContLookupManip (int ) ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int FillAdOfTypeContLookup (int *,int *,int ,TYPE_5__*,int *,int *) ;
 int MAJOR ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_5__*) ;
 scalar_t__ XX_Malloc (int) ;
 scalar_t__ e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_FR ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static t_Handle BuildNewAd(
        t_Handle h_Ad,
        t_FmPcdModifyCcKeyAdditionalParams *p_FmPcdModifyCcKeyAdditionalParams,
        t_FmPcdCcNode *p_CcNode,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcdCcNode *p_FmPcdCcNodeTmp;
    t_Handle h_OrigAd = ((void*)0);

    p_FmPcdCcNodeTmp = (t_FmPcdCcNode*)XX_Malloc(sizeof(t_FmPcdCcNode));
    if (!p_FmPcdCcNodeTmp)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("p_FmPcdCcNodeTmp"));
        return ((void*)0);
    }
    memset(p_FmPcdCcNodeTmp, 0, sizeof(t_FmPcdCcNode));

    p_FmPcdCcNodeTmp->numOfKeys = p_FmPcdModifyCcKeyAdditionalParams->numOfKeys;
    p_FmPcdCcNodeTmp->h_KeysMatchTable =
            p_FmPcdModifyCcKeyAdditionalParams->p_KeysMatchTableNew;
    p_FmPcdCcNodeTmp->h_AdTable =
            p_FmPcdModifyCcKeyAdditionalParams->p_AdTableNew;

    p_FmPcdCcNodeTmp->lclMask = p_CcNode->lclMask;
    p_FmPcdCcNodeTmp->parseCode = p_CcNode->parseCode;
    p_FmPcdCcNodeTmp->offset = p_CcNode->offset;
    p_FmPcdCcNodeTmp->prsArrayOffset = p_CcNode->prsArrayOffset;
    p_FmPcdCcNodeTmp->ctrlFlow = p_CcNode->ctrlFlow;
    p_FmPcdCcNodeTmp->ccKeySizeAccExtraction = p_CcNode->ccKeySizeAccExtraction;
    p_FmPcdCcNodeTmp->sizeOfExtraction = p_CcNode->sizeOfExtraction;
    p_FmPcdCcNodeTmp->glblMaskSize = p_CcNode->glblMaskSize;
    p_FmPcdCcNodeTmp->p_GlblMask = p_CcNode->p_GlblMask;

    if (p_FmPcdCcNextEngineParams->nextEngine == e_FM_PCD_CC)
    {
        if (p_FmPcdCcNextEngineParams->h_Manip)
        {
            h_OrigAd = p_CcNode->h_Ad;
            if (AllocAndFillAdForContLookupManip(
                    p_FmPcdCcNextEngineParams->params.ccParams.h_CcNode)
                    != E_OK)
            {
                REPORT_ERROR(MAJOR, E_INVALID_STATE, NO_MSG);
                XX_Free(p_FmPcdCcNodeTmp);
                return ((void*)0);
            }
        }
        FillAdOfTypeContLookup(h_Ad, ((void*)0), p_CcNode->h_FmPcd, p_FmPcdCcNodeTmp,
                               h_OrigAd ? ((void*)0) : p_FmPcdCcNextEngineParams->h_Manip, ((void*)0));
    }
    XX_Free(p_FmPcdCcNodeTmp);

    return ((void*)0);
}
