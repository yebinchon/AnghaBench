#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int* CK_ULONG_PTR ;
typedef  int* CK_SLOT_ID_PTR ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  scalar_t__ CK_BBOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

CK_RV
FUNC2(CK_BBOOL tokenPresent,
	      CK_SLOT_ID_PTR pSlotList,
	      CK_ULONG_PTR   pulCount)
{
    FUNC0();
    FUNC1("GetSlotList: %s\n",
	    tokenPresent ? "tokenPresent" : "token not Present");
    if (pSlotList)
	pSlotList[0] = 1;
    *pulCount = 1;
    return CKR_OK;
}