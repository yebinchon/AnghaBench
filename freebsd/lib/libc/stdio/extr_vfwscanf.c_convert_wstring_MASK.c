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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* SUPPRESS_PTR ; 
 scalar_t__ WEOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static __inline int
FUNC3(FILE *fp, wchar_t *wcp, int width, locale_t locale)
{
	wchar_t *wcp0;
	wint_t wi;
	int nread;

	nread = 0;
	if (wcp == SUPPRESS_PTR) {
		while ((wi = FUNC0(fp, locale)) != WEOF &&
		    width-- != 0 && !FUNC2(wi))
			nread++;
		if (wi != WEOF)
			FUNC1(wi, fp, locale);
	} else {
		wcp0 = wcp;
		while ((wi = FUNC0(fp, locale)) != WEOF &&
		    width-- != 0 && !FUNC2(wi)) {
			*wcp++ = (wchar_t)wi;
			nread++;
		}
		if (wi != WEOF)
			FUNC1(wi, fp, locale);
		*wcp = '\0';
	}
	return (nread);
}