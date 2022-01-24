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
struct ptunit_result {int dummy; } ;
struct iscache_fixture {int /*<<< orphan*/  iscache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result
FUNC4(struct iscache_fixture *cfix)
{
	int isid[2];

	isid[0] = FUNC0(&cfix->iscache, "name", 0ull, 1ull, 0ull);
	FUNC1(isid[0], 0);

	isid[1] = FUNC0(&cfix->iscache, "name", 1ull, 1ull, 0ull);
	FUNC1(isid[1], 0);

	/* We must get different identifiers. */
	FUNC2(isid[1], isid[0]);

	return FUNC3();
}