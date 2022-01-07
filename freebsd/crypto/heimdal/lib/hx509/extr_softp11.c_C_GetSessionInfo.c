
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ login_done; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;
struct TYPE_7__ {int slotID; scalar_t__ ulDeviceError; int flags; int state; } ;
typedef TYPE_2__* CK_SESSION_INFO_PTR ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;


 int CKF_SERIAL_SESSION ;
 int CKR_OK ;
 int CKS_RO_PUBLIC_SESSION ;
 int CKS_RO_USER_FUNCTIONS ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,int *) ;
 int memset (TYPE_2__*,int,int) ;
 TYPE_3__ soft_token ;
 int st_logf (char*) ;

CK_RV
C_GetSessionInfo(CK_SESSION_HANDLE hSession,
   CK_SESSION_INFO_PTR pInfo)
{
    st_logf("GetSessionInfo\n");
    INIT_CONTEXT();

    VERIFY_SESSION_HANDLE(hSession, ((void*)0));

    memset(pInfo, 20, sizeof(*pInfo));

    pInfo->slotID = 1;
    if (soft_token.flags.login_done)
 pInfo->state = CKS_RO_USER_FUNCTIONS;
    else
 pInfo->state = CKS_RO_PUBLIC_SESSION;
    pInfo->flags = CKF_SERIAL_SESSION;
    pInfo->ulDeviceError = 0;

    return CKR_OK;
}
