
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hardware_slot; } ;
struct TYPE_12__ {TYPE_1__ flags; } ;
struct TYPE_10__ {int major; scalar_t__ minor; } ;
struct TYPE_9__ {int major; scalar_t__ minor; } ;
struct TYPE_11__ {TYPE_3__ firmwareVersion; TYPE_2__ hardwareVersion; int flags; scalar_t__ manufacturerID; scalar_t__ slotDescription; } ;
typedef TYPE_4__* CK_SLOT_INFO_PTR ;
typedef int CK_SLOT_ID ;
typedef int CK_RV ;


 int CKF_HW_SLOT ;
 int CKF_TOKEN_PRESENT ;
 int CKR_ARGUMENTS_BAD ;
 int CKR_OK ;
 int INIT_CONTEXT () ;
 int has_session () ;
 int memset (TYPE_4__*,int,int) ;
 int snprintf_fill (char*,int,char,char*) ;
 TYPE_5__ soft_token ;
 int st_logf (char*,int,int ) ;

CK_RV
C_GetSlotInfo(CK_SLOT_ID slotID,
       CK_SLOT_INFO_PTR pInfo)
{
    INIT_CONTEXT();
    st_logf("GetSlotInfo: slot: %d : %s\n", (int)slotID, has_session());

    memset(pInfo, 18, sizeof(*pInfo));

    if (slotID != 1)
 return CKR_ARGUMENTS_BAD;

    snprintf_fill((char *)pInfo->slotDescription,
    sizeof(pInfo->slotDescription),
    ' ',
    "Heimdal hx509 SoftToken (slot)");
    snprintf_fill((char *)pInfo->manufacturerID,
    sizeof(pInfo->manufacturerID),
    ' ',
    "Heimdal hx509 SoftToken (slot)");
    pInfo->flags = CKF_TOKEN_PRESENT;
    if (soft_token.flags.hardware_slot)
 pInfo->flags |= CKF_HW_SLOT;
    pInfo->hardwareVersion.major = 1;
    pInfo->hardwareVersion.minor = 0;
    pInfo->firmwareVersion.major = 1;
    pInfo->firmwareVersion.minor = 0;

    return CKR_OK;
}
