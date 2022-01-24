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
struct bcache_fixture {int /*<<< orphan*/  bcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct bcache_fixture *bfix)
{
	bfix->bcache = FUNC0(0ull);
	FUNC1(bfix->bcache);

	return FUNC2();
}