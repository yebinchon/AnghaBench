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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {int /*<<< orphan*/ * section; int /*<<< orphan*/  iscache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_section**,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_section*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct iscache_fixture *cfix)
{
	struct pt_section *section;
	uint64_t laddr;
	int errcode, isid;

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0ull);
	FUNC4(isid, 0);

	errcode = FUNC1(&cfix->iscache, &section, &laddr, isid);
	FUNC3(errcode, 0);
	FUNC6(section, cfix->section[0]);
	FUNC7(laddr, 0ull);

	errcode = FUNC2(section);
	FUNC3(errcode, 0);

	return FUNC5();
}