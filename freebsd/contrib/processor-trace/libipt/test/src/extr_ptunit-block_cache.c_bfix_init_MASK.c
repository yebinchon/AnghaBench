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
 int /*<<< orphan*/  bfix_nentries ; 
 int /*<<< orphan*/  cfix_init ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bcache_fixture*) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct bcache_fixture *bfix)
{
	FUNC3(cfix_init, bfix);

	bfix->bcache = FUNC0(bfix_nentries);
	FUNC2(bfix->bcache);

	return FUNC1();
}