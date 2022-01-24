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
struct pt_asid {int cr3; int vmcs; int size; } ;
typedef  int /*<<< orphan*/  asid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_asid*) ; 
 int FUNC2 (struct pt_asid*,struct pt_asid*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(void)
{
	struct pt_asid asid, user;
	int errcode;

	FUNC0(&user, 0xcc, sizeof(user));
	FUNC1(&asid);
	asid.cr3 = 0x4200ull;
	asid.vmcs = 0x23000ull;

	errcode = FUNC2(&user, &asid, sizeof(user) + 8);
	FUNC3(errcode, 0);
	FUNC5(user.size, sizeof(asid));
	FUNC5(user.cr3, 0x4200ull);
	FUNC5(user.vmcs, 0x23000ull);

	return FUNC4();
}