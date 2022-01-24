#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dbm_res {int member_0; int /*<<< orphan*/  page; int /*<<< orphan*/  member_1; } ;
struct dbm_match {int dummy; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {scalar_t__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITER_ARCH ; 
 int /*<<< orphan*/  ITER_NONE ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct dbm_match const*,char const*) ; 
 int /*<<< orphan*/  iteration ; 
 size_t npages ; 
 TYPE_1__* pages ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static struct dbm_res
FUNC3(const struct dbm_match *arg_match)
{
	static const struct dbm_match	*match;
	struct dbm_res			 res = {-1, 0};
	static int32_t			 ip;
	const char			*cp;

	/* Initialize for a new iteration. */

	if (arg_match != NULL) {
		iteration = ITER_ARCH;
		match = arg_match;
		ip = 0;
		return res;
	}

	/* Search for an architecture. */

	for ( ; ip < npages; ip++)
		if (pages[ip].arch)
			for (cp = FUNC0(pages[ip].arch);
			    *cp != '\0';
			    cp = FUNC2(cp, '\0') + 1)
				if (FUNC1(match, cp)) {
					res.page = ip++;
					return res;
				}

	/* Reached the end without a match. */

	iteration = ITER_NONE;
	match = NULL;
	return res;
}