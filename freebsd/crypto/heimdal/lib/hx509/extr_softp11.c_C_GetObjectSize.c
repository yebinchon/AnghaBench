
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_ULONG_PTR ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef int CK_OBJECT_HANDLE ;


 int CKR_FUNCTION_NOT_SUPPORTED ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,int *) ;
 int st_logf (char*) ;

CK_RV
C_GetObjectSize(CK_SESSION_HANDLE hSession,
  CK_OBJECT_HANDLE hObject,
  CK_ULONG_PTR pulSize)
{
    st_logf("GetObjectSize\n");
    INIT_CONTEXT();

    VERIFY_SESSION_HANDLE(hSession, ((void*)0));
    return CKR_FUNCTION_NOT_SUPPORTED;
}
