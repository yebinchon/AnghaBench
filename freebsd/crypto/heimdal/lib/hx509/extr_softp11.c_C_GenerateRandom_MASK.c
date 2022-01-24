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
typedef  int /*<<< orphan*/  CK_ULONG ;
typedef  int /*<<< orphan*/  CK_SESSION_HANDLE ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  int /*<<< orphan*/  CK_BYTE_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_FUNCTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

CK_RV
FUNC3(CK_SESSION_HANDLE hSession,
		 CK_BYTE_PTR RandomData,
		 CK_ULONG ulRandomLen)
{
    FUNC0();
    FUNC2("GenerateRandom\n");
    FUNC1(hSession, NULL);
    return CKR_FUNCTION_NOT_SUPPORTED;
}