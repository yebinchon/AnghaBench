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
struct pt_bcache_entry {int dummy; } ;
typedef  int /*<<< orphan*/  bce ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_bcache_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long long,struct pt_bcache_entry) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_bcache_entry bce;
	int errcode;

	FUNC0(&bce, 0, sizeof(bce));

	errcode = FUNC1(NULL, 0ull, bce);
	FUNC2(errcode, -pte_internal);

	return FUNC3();
}