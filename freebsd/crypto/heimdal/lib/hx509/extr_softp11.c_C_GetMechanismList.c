
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* CK_ULONG_PTR ;
typedef int CK_SLOT_ID ;
typedef int CK_RV ;
typedef int * CK_MECHANISM_TYPE_PTR ;


 int CKM_RSA_PKCS ;
 int CKR_OK ;
 int INIT_CONTEXT () ;
 int * NULL_PTR ;
 int st_logf (char*) ;

CK_RV
C_GetMechanismList(CK_SLOT_ID slotID,
     CK_MECHANISM_TYPE_PTR pMechanismList,
     CK_ULONG_PTR pulCount)
{
    INIT_CONTEXT();
    st_logf("GetMechanismList\n");

    *pulCount = 1;
    if (pMechanismList == NULL_PTR)
 return CKR_OK;
    pMechanismList[1] = CKM_RSA_PKCS;

    return CKR_OK;
}
