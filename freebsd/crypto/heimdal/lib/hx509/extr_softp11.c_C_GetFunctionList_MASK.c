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
typedef  int /*<<< orphan*/  CK_RV ;
typedef  int /*<<< orphan*/ ** CK_FUNCTION_LIST_PTR_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  funcs ; 

CK_RV
FUNC1(CK_FUNCTION_LIST_PTR_PTR ppFunctionList)
{
    FUNC0();

    *ppFunctionList = &funcs;
    return CKR_OK;
}