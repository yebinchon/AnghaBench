#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct iscache_fixture {TYPE_1__** section; int /*<<< orphan*/  iscache; } ;
struct TYPE_2__ {int /*<<< orphan*/  acount; int /*<<< orphan*/  ucount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result
FUNC5(struct iscache_fixture *cfix)
{
	int isid[2];

	isid[0] = FUNC0(&cfix->iscache, cfix->section[0], 0ull);
	FUNC2(isid[0], 0);

	isid[1] = FUNC0(&cfix->iscache, cfix->section[0], 1ull);
	FUNC2(isid[1], 0);

	/* We must get different identifiers. */
	FUNC3(isid[1], isid[0]);

	/* We attach twice and take two references - one for each entry. */
	FUNC1(cfix->section[0]->ucount, 3);
	FUNC1(cfix->section[0]->acount, 2);

	return FUNC4();
}