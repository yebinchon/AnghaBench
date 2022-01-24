#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  used; int /*<<< orphan*/  lru; int /*<<< orphan*/  limit; } ;
struct iscache_fixture {TYPE_3__ iscache; TYPE_1__** section; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC9(struct iscache_fixture *cfix)
{
	int status, isid;

	cfix->iscache.limit = cfix->section[0]->size;
	FUNC8(cfix->iscache.used, 0ull);
	FUNC6(cfix->iscache.lru);

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC5(isid, 0);

	status = FUNC2(cfix->section[0]);
	FUNC4(status, 0);

	status = FUNC3(cfix->section[0]);
	FUNC4(status, 0);

	status = FUNC1(&cfix->iscache);
	FUNC4(status, 0);

	FUNC6(cfix->iscache.lru);
	FUNC8(cfix->iscache.used, 0ull);

	return FUNC7();
}