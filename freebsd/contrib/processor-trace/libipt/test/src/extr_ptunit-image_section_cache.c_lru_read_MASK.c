#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_9__ {unsigned long long limit; int /*<<< orphan*/  used; TYPE_2__* lru; } ;
struct iscache_fixture {TYPE_1__** section; TYPE_4__ iscache; } ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  section; } ;
struct TYPE_7__ {unsigned long long size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_4__*,int*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC9(struct iscache_fixture *cfix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	cfix->iscache.limit = cfix->section[0]->size;
	FUNC8(cfix->iscache.used, 0ull);
	FUNC4(cfix->iscache.lru);

	isid = FUNC0(&cfix->iscache, cfix->section[0], 0xa000ull);
	FUNC3(isid, 0);

	status = FUNC1(&cfix->iscache, buffer, 2ull, isid, 0xa008ull);
	FUNC2(status, 2);

	FUNC6(cfix->iscache.lru);
	FUNC7(cfix->iscache.lru->section, cfix->section[0]);
	FUNC4(cfix->iscache.lru->next);
	FUNC8(cfix->iscache.used, cfix->section[0]->size);

	return FUNC5();
}