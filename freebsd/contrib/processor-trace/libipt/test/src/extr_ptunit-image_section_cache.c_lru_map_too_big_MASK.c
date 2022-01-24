#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  used; int /*<<< orphan*/  lru; scalar_t__ limit; } ;
struct iscache_fixture {TYPE_3__ iscache; TYPE_1__** section; } ;
struct TYPE_5__ {scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct iscache_fixture *cfix)
{
	int status, isid;

	cfix->iscache.limit = cfix->section[0]->size - 1;
	FUNC7(cfix->iscache.used, 0ull);
	FUNC5(cfix->iscache.lru);

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC4(isid, 0);

	status = FUNC1(cfix->section[0]);
	FUNC3(status, 0);

	status = FUNC2(cfix->section[0]);
	FUNC3(status, 0);

	FUNC5(cfix->iscache.lru);
	FUNC7(cfix->iscache.used, 0ull);

	return FUNC6();
}