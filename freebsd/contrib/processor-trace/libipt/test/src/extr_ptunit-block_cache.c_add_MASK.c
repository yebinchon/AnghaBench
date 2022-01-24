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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int ninsn; int displacement; int isize; int /*<<< orphan*/  qualifier; int /*<<< orphan*/  mode; } ;
struct bcache_fixture {int /*<<< orphan*/  bcache; } ;
typedef  int /*<<< orphan*/  exp ;
typedef  int /*<<< orphan*/  bce ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_bcache_entry*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_bcache_entry) ; 
 int FUNC2 (struct pt_bcache_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_bcache_entry) ; 
 int FUNC4 (struct pt_bcache_entry) ; 
 int /*<<< orphan*/  ptbq_decode ; 
 int /*<<< orphan*/  ptem_64bit ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct bcache_fixture *bfix, uint64_t index)
{
	struct pt_bcache_entry bce, exp;
	int errcode;

	FUNC0(&bce, 0xff, sizeof(bce));
	FUNC0(&exp, 0x00, sizeof(exp));

	exp.ninsn = 1;
	exp.displacement = 7;
	exp.mode = ptem_64bit;
	exp.qualifier = ptbq_decode;
	exp.isize = 7;

	errcode = FUNC1(bfix->bcache, index, exp);
	FUNC5(errcode, 0);

	errcode = FUNC2(&bce, bfix->bcache, index);
	FUNC5(errcode, 0);

	FUNC7(bce.ninsn, exp.ninsn);
	FUNC5(bce.displacement, exp.displacement);
	FUNC7(FUNC3(bce), FUNC3(exp));
	FUNC7(FUNC4(bce), FUNC4(exp));
	FUNC7(bce.isize, exp.isize);

	return FUNC6();
}