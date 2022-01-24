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
struct pt_tnt_cache {unsigned long long tnt; unsigned long long index; } ;

/* Variables and functions */
 int FUNC0 (struct pt_tnt_cache*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_tnt_cache tnt_cache;
	int errcode;

	tnt_cache.tnt = 42ull;
	tnt_cache.index = 12ull;

	errcode = FUNC0(&tnt_cache, NULL, NULL);
	FUNC1(errcode, -pte_invalid);
	FUNC3(tnt_cache.tnt, 42ull);
	FUNC3(tnt_cache.index, 12ull);

	return FUNC2();
}