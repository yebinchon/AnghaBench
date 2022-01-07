
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* CK_ULONG_PTR ;
typedef int* CK_SLOT_ID_PTR ;
typedef int CK_RV ;
typedef scalar_t__ CK_BBOOL ;


 int CKR_OK ;
 int INIT_CONTEXT () ;
 int st_logf (char*,char*) ;

CK_RV
C_GetSlotList(CK_BBOOL tokenPresent,
       CK_SLOT_ID_PTR pSlotList,
       CK_ULONG_PTR pulCount)
{
    INIT_CONTEXT();
    st_logf("GetSlotList: %s\n",
     tokenPresent ? "tokenPresent" : "token not Present");
    if (pSlotList)
 pSlotList[0] = 1;
    *pulCount = 1;
    return CKR_OK;
}
