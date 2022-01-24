#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const wchar_t ;
struct dirent {int /*<<< orphan*/ * d_name; } ;
typedef  int /*<<< orphan*/  dir ;
struct TYPE_3__ {int /*<<< orphan*/  const* cursor; int /*<<< orphan*/  const* buffer; } ;
typedef  TYPE_1__ LineInfoW ;
typedef  int /*<<< orphan*/  EditLine ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 unsigned char CC_ERROR ; 
 unsigned char CC_REFRESH ; 
 int MB_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static unsigned char
FUNC13(EditLine *el, int ch)
{
	DIR *dd = FUNC8(".");
	struct dirent *dp;
	const wchar_t *ptr;
	char *buf, *bptr;
	const LineInfoW *lf = FUNC2(el);
	int len, mblen, i;
	unsigned char res = 0;
	wchar_t dir[1024];

	/* Find the last word */
	for (ptr = lf->cursor -1; !FUNC5(*ptr) && ptr > lf->buffer; --ptr)
		continue;
	len = lf->cursor - ++ptr;

	/* Convert last word to multibyte encoding, so we can compare to it */
	FUNC12(NULL, 0); /* Reset shift state */
	mblen = MB_LEN_MAX * len + 1;
	buf = bptr = FUNC6(mblen);
	if (buf == NULL)
		FUNC3(1, "malloc");
	for (i = 0; i < len; ++i) {
		/* Note: really should test for -1 return from wctomb */
		bptr += FUNC12(bptr, ptr[i]);
	}
	*bptr = 0; /* Terminate multibyte string */
	mblen = bptr - buf;

	/* Scan directory for matching name */
	for (dp = FUNC9(dd); dp != NULL; dp = FUNC9(dd)) {
		if (mblen > FUNC10(dp->d_name))
			continue;
		if (FUNC11(dp->d_name, buf, mblen) == 0) {
			FUNC7(dir, &dp->d_name[mblen],
			    sizeof(dir) / sizeof(*dir));
			if (FUNC1(el, dir) == -1)
				res = CC_ERROR;
			else
				res = CC_REFRESH;
			break;
		}
	}

	FUNC0(dd);
	FUNC4(buf);
	return res;
}