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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* SUPPRESS_PTR ; 
 scalar_t__ WEOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_mbs ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 size_t FUNC3 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC4(FILE *fp, char * mbp, int width, locale_t locale)
{
	mbstate_t mbs;
	size_t nconv;
	wint_t wi;
	int nread;

	mbs = initial_mbs;
	nread = 0;
	while ((wi = FUNC0(fp, locale)) != WEOF && width-- != 0 &&
	    !FUNC2(wi)) {
		if (mbp != SUPPRESS_PTR) {
			nconv = FUNC3(mbp, wi, &mbs);
			if (nconv == (size_t)-1)
				return (-1);
			mbp += nconv;
		}
		nread++;
	}
	if (wi != WEOF)
		FUNC1(wi, fp, locale);
	if (mbp != SUPPRESS_PTR)
		*mbp = 0;
	return (nread);
}