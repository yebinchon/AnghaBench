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
typedef  int /*<<< orphan*/  tnt_cache ;
struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {int /*<<< orphan*/  index; int /*<<< orphan*/  tnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_tnt_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_tnt_cache*) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_tnt_cache tnt_cache;

	FUNC0(&tnt_cache, 0xcd, sizeof(tnt_cache));

	FUNC1(&tnt_cache);

	FUNC3(tnt_cache.tnt, 0ull);
	FUNC3(tnt_cache.index, 0ull);

	return FUNC2();
}