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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct iscache_fixture *cfix)
{
	int isid[2];

	isid[0] = FUNC0(&cfix->iscache, cfix->section[0], 0ull);
	FUNC2(isid[0], 0);

	cfix->section[1]->offset = cfix->section[0]->offset;
	cfix->section[1]->size = cfix->section[0]->size;

	isid[1] = FUNC0(&cfix->iscache, cfix->section[1], 0ull);
	FUNC2(isid[1], 0);

	/* The second add should be ignored. */
	FUNC1(isid[1], isid[0]);

	return FUNC3();
}