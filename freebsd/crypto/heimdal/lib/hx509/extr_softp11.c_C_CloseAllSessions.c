
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ session_handle; } ;
struct TYPE_3__ {TYPE_2__* state; } ;
typedef int CK_SLOT_ID ;
typedef int CK_RV ;


 int CKR_OK ;
 scalar_t__ CK_INVALID_HANDLE ;
 int INIT_CONTEXT () ;
 size_t MAX_NUM_SESSION ;
 int close_session (TYPE_2__*) ;
 TYPE_1__ soft_token ;
 int st_logf (char*) ;

CK_RV
C_CloseAllSessions(CK_SLOT_ID slotID)
{
    size_t i;
    INIT_CONTEXT();

    st_logf("CloseAllSessions\n");

    for (i = 0; i < MAX_NUM_SESSION; i++)
 if (soft_token.state[i].session_handle != CK_INVALID_HANDLE)
     close_session(&soft_token.state[i]);

    return CKR_OK;
}
