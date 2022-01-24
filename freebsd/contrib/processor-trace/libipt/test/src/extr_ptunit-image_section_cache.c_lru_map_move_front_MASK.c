#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_10__ {unsigned long long limit; int /*<<< orphan*/  used; TYPE_2__* lru; } ;
struct iscache_fixture {TYPE_1__** section; TYPE_6__ iscache; } ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/  section; } ;
struct TYPE_8__ {unsigned long long size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC10(struct iscache_fixture *cfix)
{
	int status, isid;

	cfix->iscache.limit = cfix->section[0]->size + cfix->section[1]->size;
	FUNC9(cfix->iscache.used, 0ull);
	FUNC5(cfix->iscache.lru);

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC4(isid, 0);

	isid = FUNC0(&cfix->iscache, cfix->section[1], 0xa000ull);
	FUNC4(isid, 0);

	status = FUNC1(cfix->section[0]);
	FUNC3(status, 0);

	status = FUNC2(cfix->section[0]);
	FUNC3(status, 0);

	status = FUNC1(cfix->section[1]);
	FUNC3(status, 0);

	status = FUNC2(cfix->section[1]);
	FUNC3(status, 0);

	status = FUNC1(cfix->section[0]);
	FUNC3(status, 0);

	status = FUNC2(cfix->section[0]);
	FUNC3(status, 0);

	FUNC7(cfix->iscache.lru);
	FUNC8(cfix->iscache.lru->section, cfix->section[0]);
	FUNC7(cfix->iscache.lru->next);
	FUNC8(cfix->iscache.lru->next->section, cfix->section[1]);
	FUNC5(cfix->iscache.lru->next->next);
	FUNC9(cfix->iscache.used,
		    cfix->section[0]->size + cfix->section[1]->size);

	return FUNC6();
}