#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_11__ {int limit; int /*<<< orphan*/  used; TYPE_2__* lru; } ;
struct iscache_fixture {TYPE_1__** section; TYPE_7__ iscache; } ;
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/  section; } ;
struct TYPE_9__ {int size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_7__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct ptunit_result FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC11(struct iscache_fixture *cfix)
{
	int status, isid;

	cfix->iscache.limit = 4 * cfix->section[0]->size +
		cfix->section[1]->size - 1;
	FUNC10(cfix->iscache.used, 0ull);
	FUNC6(cfix->iscache.lru);

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC5(isid, 0);

	isid = FUNC0(&cfix->iscache, cfix->section[1], 0xa000ull);
	FUNC5(isid, 0);

	status = FUNC1(cfix->section[0]);
	FUNC4(status, 0);

	status = FUNC3(cfix->section[0]);
	FUNC4(status, 0);

	status = FUNC1(cfix->section[1]);
	FUNC4(status, 0);

	status = FUNC3(cfix->section[1]);
	FUNC4(status, 0);

	status = FUNC2(cfix->section[0]);
	FUNC4(status, 0);

	FUNC8(cfix->iscache.lru);
	FUNC9(cfix->iscache.lru->section, cfix->section[0]);
	FUNC6(cfix->iscache.lru->next);
	FUNC10(cfix->iscache.used, 4 * cfix->section[0]->size);

	return FUNC7();
}