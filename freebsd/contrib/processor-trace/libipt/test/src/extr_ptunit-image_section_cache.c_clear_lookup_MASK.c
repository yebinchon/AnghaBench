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
struct iscache_fixture {int /*<<< orphan*/  iscache; int /*<<< orphan*/ * section; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct pt_section**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pte_bad_image ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	struct pt_section *section;
	uint64_t laddr;
	int errcode, isid;

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0ull);
	FUNC4(isid, 0);

	errcode = FUNC1(&cfix->iscache);
	FUNC3(errcode, 0);

	errcode = FUNC2(&cfix->iscache, &section, &laddr, isid);
	FUNC3(errcode, -pte_bad_image);

	return FUNC5();
}