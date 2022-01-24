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
typedef  scalar_t__ wint_t ;
struct ccl {int dummy; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* SUPPRESS_PTR ; 
 scalar_t__ WEOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ccl const*,scalar_t__) ; 
 int /*<<< orphan*/  initial_mbs ; 
 size_t FUNC3 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC4(FILE *fp, char * mbp, int width, const struct ccl *ccl,
    locale_t locale)
{
	mbstate_t mbs;
	size_t nconv;
	wint_t wi;
	int n;

	n = 0;
	mbs = initial_mbs;
	while ((wi = FUNC0(fp, locale)) != WEOF &&
	    width-- != 0 && FUNC2(ccl, wi)) {
		if (mbp != SUPPRESS_PTR) {
			nconv = FUNC3(mbp, wi, &mbs);
			if (nconv == (size_t)-1)
				return (-1);
			mbp += nconv;
		}
		n++;
	}
	if (wi != WEOF)
		FUNC1(wi, fp, locale);
	if (mbp != SUPPRESS_PTR)
		*mbp = 0;
	return (n);
}