
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CK_UTF8CHAR_PTR ;
typedef int CK_ULONG ;
typedef scalar_t__ CK_SLOT_ID ;
typedef int CK_RV ;


 int CKR_FUNCTION_NOT_SUPPORTED ;
 int INIT_CONTEXT () ;
 int st_logf (char*,int) ;

CK_RV
C_InitToken(CK_SLOT_ID slotID,
     CK_UTF8CHAR_PTR pPin,
     CK_ULONG ulPinLen,
     CK_UTF8CHAR_PTR pLabel)
{
    INIT_CONTEXT();
    st_logf("InitToken: slot %d\n", (int)slotID);
    return CKR_FUNCTION_NOT_SUPPORTED;
}
