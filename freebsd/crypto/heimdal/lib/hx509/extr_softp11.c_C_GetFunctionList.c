
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_RV ;
typedef int ** CK_FUNCTION_LIST_PTR_PTR ;


 int CKR_OK ;
 int INIT_CONTEXT () ;
 int funcs ;

CK_RV
C_GetFunctionList(CK_FUNCTION_LIST_PTR_PTR ppFunctionList)
{
    INIT_CONTEXT();

    *ppFunctionList = &funcs;
    return CKR_OK;
}
