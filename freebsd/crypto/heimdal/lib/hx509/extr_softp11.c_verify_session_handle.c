
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session_state {scalar_t__ session_handle; } ;
struct TYPE_2__ {struct session_state* state; } ;
typedef scalar_t__ CK_SESSION_HANDLE ;
typedef int CK_RV ;


 int CKR_OK ;
 int CKR_SESSION_HANDLE_INVALID ;
 size_t MAX_NUM_SESSION ;
 int application_error (char*,unsigned long) ;
 TYPE_1__ soft_token ;

__attribute__((used)) static CK_RV
verify_session_handle(CK_SESSION_HANDLE hSession,
        struct session_state **state)
{
    size_t i;

    for (i = 0; i < MAX_NUM_SESSION; i++){
 if (soft_token.state[i].session_handle == hSession)
     break;
    }
    if (i == MAX_NUM_SESSION) {
 application_error("use of invalid handle: 0x%08lx\n",
     (unsigned long)hSession);
 return CKR_SESSION_HANDLE_INVALID;
    }
    if (state)
 *state = &soft_token.state[i];
    return CKR_OK;
}
