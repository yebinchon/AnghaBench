
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ physicalMuramBase; } ;
typedef TYPE_1__ t_FmPcd ;
struct TYPE_5__ {int h_CcNode; } ;
typedef TYPE_2__ t_CcNodeInformation ;


 TYPE_2__* CC_NODE_F_OBJECT (scalar_t__) ;
 int E_INVALID_HANDLE ;
 scalar_t__ ILLEGAL_BASE ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;
 scalar_t__ XX_VirtToPhys (int ) ;

uint32_t FmPcdCcGetNodeAddrOffsetFromNodeInfo(t_Handle h_FmPcd,
                                              t_Handle h_Pointer)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_CcNodeInformation *p_CcNodeInfo;

    SANITY_CHECK_RETURN_VALUE(h_FmPcd, E_INVALID_HANDLE,
                              (uint32_t)ILLEGAL_BASE);

    p_CcNodeInfo = CC_NODE_F_OBJECT(h_Pointer);

    return (uint32_t)(XX_VirtToPhys(p_CcNodeInfo->h_CcNode)
            - p_FmPcd->physicalMuramBase);
}
