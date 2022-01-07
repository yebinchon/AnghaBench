
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_state {int dummy; } ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;


 int CKR_OK ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,struct session_state**) ;
 int find_object_final (struct session_state*) ;
 int st_logf (char*) ;

CK_RV
C_FindObjectsFinal(CK_SESSION_HANDLE hSession)
{
    struct session_state *state;

    INIT_CONTEXT();

    st_logf("FindObjectsFinal\n");
    VERIFY_SESSION_HANDLE(hSession, &state);
    find_object_final(state);
    return CKR_OK;
}
