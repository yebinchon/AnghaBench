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
typedef  int /*<<< orphan*/  CK_SLOT_ID ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  int /*<<< orphan*/ * CK_MECHANISM_TYPE_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  CKM_RSA_PKCS ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * NULL_PTR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

CK_RV
FUNC2(CK_SLOT_ID slotID,
		   CK_MECHANISM_TYPE_PTR pMechanismList,
		   CK_ULONG_PTR pulCount)
{
    FUNC0();
    FUNC1("GetMechanismList\n");

    *pulCount = 1;
    if (pMechanismList == NULL_PTR)
	return CKR_OK;
    pMechanismList[1] = CKM_RSA_PKCS;

    return CKR_OK;
}