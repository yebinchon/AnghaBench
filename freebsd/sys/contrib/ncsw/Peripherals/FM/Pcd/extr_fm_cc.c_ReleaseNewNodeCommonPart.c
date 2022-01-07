
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p_KeysMatchTableNew; scalar_t__ h_CurrentNode; scalar_t__ p_AdTableNew; } ;
typedef TYPE_1__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_5__ {int h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdCcNode ;


 int FM_MURAM_FreeMem (int ,scalar_t__) ;
 int FmPcdGetMuramHandle (int ) ;

__attribute__((used)) static void ReleaseNewNodeCommonPart(
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalInfo)
{
    if (p_AdditionalInfo->p_AdTableNew)
        FM_MURAM_FreeMem(
                FmPcdGetMuramHandle(
                        ((t_FmPcdCcNode *)(p_AdditionalInfo->h_CurrentNode))->h_FmPcd),
                p_AdditionalInfo->p_AdTableNew);

    if (p_AdditionalInfo->p_KeysMatchTableNew)
        FM_MURAM_FreeMem(
                FmPcdGetMuramHandle(
                        ((t_FmPcdCcNode *)(p_AdditionalInfo->h_CurrentNode))->h_FmPcd),
                p_AdditionalInfo->p_KeysMatchTableNew);
}
