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
struct page {int dummy; } ;
struct macro {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFTYPE ; 
 scalar_t__ MACRO_MAX ; 
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 scalar_t__* FUNC1 (scalar_t__ const) ; 
 scalar_t__ const* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  errno ; 
 struct macro** macros ; 
 scalar_t__ npages ; 
 scalar_t__* nvals ; 
 struct page* pages ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

int
FUNC6(const char *fname)
{
	const int32_t	*mp, *ep;
	int32_t		 im;

	if (FUNC3(fname) == -1)
		return -1;

	if ((npages = FUNC0(*FUNC2(4))) < 0) {
		FUNC5("dbm_open(%s): Invalid number of pages: %d",
		    fname, npages);
		goto fail;
	}
	pages = (struct page *)FUNC2(5);

	if ((mp = FUNC1(*FUNC2(2))) == NULL) {
		FUNC5("dbm_open(%s): Invalid offset of macros array", fname);
		goto fail;
	}
	if (FUNC0(*mp) != MACRO_MAX) {
		FUNC5("dbm_open(%s): Invalid number of macros: %d",
		    fname, FUNC0(*mp));
		goto fail;
	}
	for (im = 0; im < MACRO_MAX; im++) {
		if ((ep = FUNC1(*++mp)) == NULL) {
			FUNC5("dbm_open(%s): Invalid offset of macro %d",
			    fname, im);
			goto fail;
		}
		nvals[im] = FUNC0(*ep);
		macros[im] = (struct macro *)++ep;
	}
	return 0;

fail:
	FUNC4();
	errno = EFTYPE;
	return -1;
}