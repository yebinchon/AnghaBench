
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_state {int dummy; } ;
typedef int CK_SESSION_HANDLE ;
typedef scalar_t__ CK_RV ;


 scalar_t__ CKR_OK ;
 int INIT_CONTEXT () ;
 int application_error (char*) ;
 int close_session (struct session_state*) ;
 int st_logf (char*) ;
 scalar_t__ verify_session_handle (int ,struct session_state**) ;

CK_RV
C_CloseSession(CK_SESSION_HANDLE hSession)
{
    struct session_state *state;
    INIT_CONTEXT();
    st_logf("CloseSession\n");

    if (verify_session_handle(hSession, &state) != CKR_OK)
 application_error("closed session not open");
    else
 close_session(state);

    return CKR_OK;
}
