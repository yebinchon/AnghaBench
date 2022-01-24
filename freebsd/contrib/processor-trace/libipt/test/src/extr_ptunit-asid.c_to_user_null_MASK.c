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
struct ptunit_result {int dummy; } ;
struct pt_asid {int dummy; } ;
typedef  int /*<<< orphan*/  asid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_asid*,int) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_asid asid;
	int errcode;

	FUNC0(&asid);

	errcode = FUNC1(NULL, NULL, sizeof(asid));
	FUNC2(errcode, -pte_internal);

	errcode = FUNC1(NULL, &asid, sizeof(asid));
	FUNC2(errcode, -pte_internal);

	return FUNC3();
}