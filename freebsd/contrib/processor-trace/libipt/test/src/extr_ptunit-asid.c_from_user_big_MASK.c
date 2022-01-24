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
typedef  int /*<<< orphan*/  user ;
struct ptunit_result {int dummy; } ;
struct pt_asid {int size; int cr3; int vmcs; } ;
typedef  int /*<<< orphan*/  asid ;

/* Variables and functions */
 int FUNC0 (struct pt_asid*,struct pt_asid*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_asid asid, user;
	int errcode;

	user.size = sizeof(user) + 4;
	user.cr3 = 0x4200ull;
	user.vmcs = 0x23000ull;

	errcode = FUNC0(&asid, &user);
	FUNC1(errcode, 0);
	FUNC3(asid.size, sizeof(asid));
	FUNC3(asid.cr3, 0x4200ull);
	FUNC3(asid.vmcs, 0x23000ull);

	return FUNC2();
}