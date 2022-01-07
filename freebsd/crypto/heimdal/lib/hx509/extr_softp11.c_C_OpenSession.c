
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t open_sessions; TYPE_1__* state; int notify; int application; } ;
struct TYPE_3__ {scalar_t__ session_handle; } ;
typedef int CK_VOID_PTR ;
typedef scalar_t__ CK_SLOT_ID ;
typedef scalar_t__* CK_SESSION_HANDLE_PTR ;
typedef scalar_t__ CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef int CK_NOTIFY ;
typedef int CK_FLAGS ;


 int CKR_OK ;
 int CKR_SESSION_COUNT ;
 scalar_t__ CK_INVALID_HANDLE ;
 int INIT_CONTEXT () ;
 size_t MAX_NUM_SESSION ;
 int abort () ;
 int random () ;
 TYPE_2__ soft_token ;
 int st_logf (char*,int) ;

CK_RV
C_OpenSession(CK_SLOT_ID slotID,
       CK_FLAGS flags,
       CK_VOID_PTR pApplication,
       CK_NOTIFY Notify,
       CK_SESSION_HANDLE_PTR phSession)
{
    size_t i;
    INIT_CONTEXT();
    st_logf("OpenSession: slot: %d\n", (int)slotID);

    if (soft_token.open_sessions == MAX_NUM_SESSION)
 return CKR_SESSION_COUNT;

    soft_token.application = pApplication;
    soft_token.notify = Notify;

    for (i = 0; i < MAX_NUM_SESSION; i++)
 if (soft_token.state[i].session_handle == CK_INVALID_HANDLE)
     break;
    if (i == MAX_NUM_SESSION)
 abort();

    soft_token.open_sessions++;

    soft_token.state[i].session_handle =
 (CK_SESSION_HANDLE)(random() & 0xfffff);
    *phSession = soft_token.state[i].session_handle;

    return CKR_OK;
}
