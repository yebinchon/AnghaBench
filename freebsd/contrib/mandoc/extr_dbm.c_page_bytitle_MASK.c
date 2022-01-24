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
struct dbm_res {int member_0; char bits; scalar_t__ page; int /*<<< orphan*/  member_1; } ;
struct dbm_match {int dummy; } ;
typedef  scalar_t__ int32_t ;
typedef  enum iter { ____Placeholder_iter } iter ;
struct TYPE_2__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  sect; int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  ITER_DESC 130 
#define  ITER_NAME 129 
 int ITER_NONE ; 
#define  ITER_SECT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dbm_match const*,char const*) ; 
 int iteration ; 
 scalar_t__ npages ; 
 TYPE_1__* pages ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static struct dbm_res
FUNC5(enum iter arg_iter, const struct dbm_match *arg_match)
{
	static const struct dbm_match	*match;
	static const char		*cp;
	static int32_t			 ip;
	struct dbm_res			 res = {-1, 0};

	FUNC1(arg_iter == ITER_NAME || arg_iter == ITER_DESC ||
	    arg_iter == ITER_SECT);

	/* Initialize for a new iteration. */

	if (arg_match != NULL) {
		iteration = arg_iter;
		match = arg_match;
		switch (iteration) {
		case ITER_NAME:
			cp = FUNC2(pages[0].name);
			break;
		case ITER_SECT:
			cp = FUNC2(pages[0].sect);
			break;
		case ITER_DESC:
			cp = FUNC2(pages[0].desc);
			break;
		default:
			FUNC0();
		}
		if (cp == NULL) {
			iteration = ITER_NONE;
			match = NULL;
			cp = NULL;
			ip = npages;
		} else
			ip = 0;
		return res;
	}

	/* Search for a name. */

	while (ip < npages) {
		if (iteration == ITER_NAME)
			cp++;
		if (FUNC3(match, cp))
			break;
		cp = FUNC4(cp, '\0') + 1;
		if (iteration == ITER_DESC)
			ip++;
		else if (*cp == '\0') {
			cp++;
			ip++;
		}
	}

	/* Reached the end without a match. */

	if (ip == npages) {
		iteration = ITER_NONE;
		match = NULL;
		cp = NULL;
		return res;
	}

	/* Found a match; save the quality for later retrieval. */

	res.page = ip;
	res.bits = iteration == ITER_NAME ? cp[-1] : 0;

	/* Skip the remaining names of this page. */

	if (++ip < npages) {
		do {
			cp++;
		} while (cp[-1] != '\0' ||
		    (iteration != ITER_DESC && cp[-2] != '\0'));
	}
	return res;
}