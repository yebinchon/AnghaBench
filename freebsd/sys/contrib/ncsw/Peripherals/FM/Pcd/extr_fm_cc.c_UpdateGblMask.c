
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int glblMaskSize; scalar_t__ parseCode; void* lclMask; int maskSupport; scalar_t__ maxNumOfKeys; int p_GlblMask; void* glblMaskUpdated; } ;
typedef TYPE_1__ t_FmPcdCcNode ;
typedef int t_Error ;


 scalar_t__ CC_PC_FF_IPDSCP ;
 scalar_t__ CC_PC_FF_IPTOS_IPV6TC1_IPV6FLOW1 ;
 scalar_t__ CC_PC_FF_IPTOS_IPV6TC2_IPV6FLOW2 ;
 scalar_t__ CC_PC_FF_IPV4IPTOS_TC1 ;
 scalar_t__ CC_PC_FF_IPV4IPTOS_TC2 ;
 scalar_t__ CC_PC_FF_MPLS1 ;
 scalar_t__ CC_PC_FF_MPLS_LAST ;
 scalar_t__ CC_PC_FF_TCI1 ;
 scalar_t__ CC_PC_FF_TCI2 ;
 int ERROR_CODE (int ) ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ memcmp (int ,int*,int) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static t_Error UpdateGblMask(t_FmPcdCcNode *p_CcNode, uint8_t keySize,
                             uint8_t *p_Mask)
{
    uint8_t prvGlblMaskSize = p_CcNode->glblMaskSize;

    if (p_Mask && !p_CcNode->glblMaskUpdated && (keySize <= 4)
            && !p_CcNode->lclMask)
    {
        if (p_CcNode->parseCode && (p_CcNode->parseCode != CC_PC_FF_TCI1)
                && (p_CcNode->parseCode != CC_PC_FF_TCI2)
                && (p_CcNode->parseCode != CC_PC_FF_MPLS1)
                && (p_CcNode->parseCode != CC_PC_FF_MPLS_LAST)
                && (p_CcNode->parseCode != CC_PC_FF_IPV4IPTOS_TC1)
                && (p_CcNode->parseCode != CC_PC_FF_IPV4IPTOS_TC2)
                && (p_CcNode->parseCode != CC_PC_FF_IPTOS_IPV6TC1_IPV6FLOW1)
                && (p_CcNode->parseCode != CC_PC_FF_IPDSCP)
                && (p_CcNode->parseCode != CC_PC_FF_IPTOS_IPV6TC2_IPV6FLOW2))
        {
            p_CcNode->glblMaskSize = 0;
            p_CcNode->lclMask = TRUE;
        }
        else
        {
            memcpy(p_CcNode->p_GlblMask, p_Mask, (sizeof(uint8_t)) * keySize);
            p_CcNode->glblMaskUpdated = TRUE;
            p_CcNode->glblMaskSize = 4;
        }
    }
    else
        if (p_Mask && (keySize <= 4) && !p_CcNode->lclMask)
        {
            if (memcmp(p_CcNode->p_GlblMask, p_Mask, keySize) != 0)
            {
                p_CcNode->lclMask = TRUE;
                p_CcNode->glblMaskSize = 0;
            }
        }
        else
            if (!p_Mask && p_CcNode->glblMaskUpdated && (keySize <= 4))
            {
                uint32_t tmpMask = 0xffffffff;
                if (memcmp(p_CcNode->p_GlblMask, &tmpMask, 4) != 0)
                {
                    p_CcNode->lclMask = TRUE;
                    p_CcNode->glblMaskSize = 0;
                }
            }
            else
                if (p_Mask)
                {
                    p_CcNode->lclMask = TRUE;
                    p_CcNode->glblMaskSize = 0;
                }



    if (p_CcNode->maxNumOfKeys && (!p_CcNode->maskSupport) && p_CcNode->lclMask)
    {
        p_CcNode->lclMask = FALSE;
        p_CcNode->glblMaskSize = prvGlblMaskSize;
        return ERROR_CODE(E_NOT_SUPPORTED);
    }

    return E_OK;
}
