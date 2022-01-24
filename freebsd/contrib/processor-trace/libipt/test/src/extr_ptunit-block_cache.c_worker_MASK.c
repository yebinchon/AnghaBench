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
struct pt_block_cache {int dummy; } ;
struct pt_bcache_entry {int ninsn; int displacement; int isize; int /*<<< orphan*/  qualifier; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  exp ;
typedef  int /*<<< orphan*/  bce ;

/* Variables and functions */
 scalar_t__ bfix_iterations ; 
 scalar_t__ bfix_nentries ; 
 int /*<<< orphan*/  FUNC0 (struct pt_bcache_entry*,int,int) ; 
 int FUNC1 (struct pt_block_cache*,scalar_t__,struct pt_bcache_entry) ; 
 int FUNC2 (struct pt_bcache_entry*,struct pt_block_cache*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct pt_bcache_entry) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_bcache_entry) ; 
 scalar_t__ FUNC5 (struct pt_bcache_entry) ; 
 int /*<<< orphan*/  ptbq_again ; 
 int pte_internal ; 
 int pte_nosync ; 
 int /*<<< orphan*/  ptem_64bit ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct pt_bcache_entry exp;
	struct pt_block_cache *bcache;
	uint64_t iter, index;

	bcache = arg;
	if (!bcache)
		return -pte_internal;

	FUNC0(&exp, 0x00, sizeof(exp));
	exp.ninsn = 5;
	exp.displacement = 28;
	exp.mode = ptem_64bit;
	exp.qualifier = ptbq_again;
	exp.isize = 3;

	for (index = 0; index < bfix_nentries; ++index) {
		for (iter = 0; iter < bfix_iterations; ++iter) {
			struct pt_bcache_entry bce;
			int errcode;

			FUNC0(&bce, 0xff, sizeof(bce));

			errcode = FUNC2(&bce, bcache, index);
			if (errcode < 0)
				return errcode;

			if (!FUNC4(bce)) {
				errcode = FUNC1(bcache, index, exp);
				if (errcode < 0)
					return errcode;
			}

			errcode = FUNC2(&bce, bcache, index);
			if (errcode < 0)
				return errcode;

			if (!FUNC4(bce))
				return -pte_nosync;

			if (bce.ninsn != exp.ninsn)
				return -pte_nosync;

			if (bce.displacement != exp.displacement)
				return -pte_nosync;

			if (FUNC3(bce) != FUNC3(exp))
				return -pte_nosync;

			if (FUNC5(bce) != FUNC5(exp))
				return -pte_nosync;

			if (bce.isize != exp.isize)
				return -pte_nosync;
		}
	}

	return 0;
}