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
struct page {int dummy; } ;
struct dbm_res {int member_0; struct page* page; int /*<<< orphan*/  member_1; } ;
struct dbm_match {int dummy; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ ITER_MACRO ; 
 scalar_t__ ITER_NONE ; 
 size_t MACRO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dbm_match const*,char const*) ; 
 scalar_t__ iteration ; 
 TYPE_1__** macros ; 
 int* nvals ; 
 int pages ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static struct dbm_res
FUNC4(int32_t arg_im, const struct dbm_match *arg_match)
{
	static const struct dbm_match	*match;
	static const int32_t		*pp;
	static const char		*cp;
	static int32_t			 im, iv;
	struct dbm_res			 res = {-1, 0};

	FUNC0(im >= 0);
	FUNC0(im < MACRO_MAX);

	/* Initialize for a new iteration. */

	if (arg_match != NULL) {
		iteration = ITER_MACRO;
		match = arg_match;
		im = arg_im;
		cp = nvals[im] ? FUNC1(macros[im]->value) : NULL;
		pp = NULL;
		iv = -1;
		return res;
	}
	if (iteration != ITER_MACRO)
		return res;

	/* Find the next matching macro value. */

	while (pp == NULL || *pp == 0) {
		if (++iv == nvals[im]) {
			iteration = ITER_NONE;
			return res;
		}
		if (iv)
			cp = FUNC3(cp, '\0') + 1;
		if (FUNC2(match, cp))
			pp = FUNC1(macros[im][iv].pages);
	}

	/* Found a matching page. */

	res.page = (struct page *)FUNC1(*pp++) - pages;
	return res;
}