
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef int CK_BYTE_PTR ;


 int CKR_FUNCTION_NOT_SUPPORTED ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,int *) ;
 int st_logf (char*) ;

CK_RV
C_VerifyUpdate(CK_SESSION_HANDLE hSession,
        CK_BYTE_PTR pPart,
        CK_ULONG ulPartLen)
{
    INIT_CONTEXT();
    st_logf("VerifyUpdate\n");
    VERIFY_SESSION_HANDLE(hSession, ((void*)0));
    return CKR_FUNCTION_NOT_SUPPORTED;
}
