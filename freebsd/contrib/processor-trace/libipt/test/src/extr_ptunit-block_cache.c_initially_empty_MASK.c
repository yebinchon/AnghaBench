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
typedef  scalar_t__ uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;
struct bcache_fixture {int /*<<< orphan*/  bcache; } ;
typedef  int /*<<< orphan*/  bce ;

/* Variables and functions */
 scalar_t__ bfix_nentries ; 
 int /*<<< orphan*/  FUNC0 (struct pt_bcache_entry*,int,int) ; 
 int FUNC1 (struct pt_bcache_entry*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct pt_bcache_entry) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct bcache_fixture *bfix)
{
	uint64_t index;

	for (index = 0; index < bfix_nentries; ++index) {
		struct pt_bcache_entry bce;
		int status;

		FUNC0(&bce, 0xff, sizeof(bce));

		status = FUNC1(&bce, bfix->bcache, index);
		FUNC3(status, 0);

		status = FUNC2(bce);
		FUNC3(status, 0);
	}

	return FUNC4();
}