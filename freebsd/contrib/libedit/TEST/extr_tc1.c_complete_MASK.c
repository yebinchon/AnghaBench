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
struct dirent {int /*<<< orphan*/ * d_name; } ;
struct TYPE_3__ {char* cursor; char const* buffer; } ;
typedef  TYPE_1__ LineInfo ;
typedef  int /*<<< orphan*/  EditLine ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int CC_ERROR ; 
 int CC_REFRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static unsigned char
FUNC8(EditLine *el, int ch)
{
	DIR *dd = FUNC4(".");
	struct dirent *dp;
	const char* ptr;
	const LineInfo *lf = FUNC2(el);
	int len;
	int res = CC_ERROR;

	/*
	 * Find the last word
	 */
	for (ptr = lf->cursor - 1;
	    !FUNC3((unsigned char)*ptr) && ptr > lf->buffer; ptr--)
		continue;
	len = lf->cursor - ++ptr;

	for (dp = FUNC5(dd); dp != NULL; dp = FUNC5(dd)) {
		if (len > FUNC6(dp->d_name))
			continue;
		if (FUNC7(dp->d_name, ptr, len) == 0) {
			if (FUNC1(el, &dp->d_name[len]) == -1)
				res = CC_ERROR;
			else
				res = CC_REFRESH;
			break;
		}
	}

	FUNC0(dd);
	return res;
}