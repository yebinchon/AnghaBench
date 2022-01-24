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
typedef  int wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 char* UTF8_LOCALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int) ; 

int
FUNC6(void)
{
	wchar_t	 wc;
	int	 width;

	if (FUNC4(LC_ALL, "") == NULL) {
		FUNC2("setlocale(LC_ALL, \"\") failed\n", stderr);
		return 1;
	}

	if (FUNC4(LC_CTYPE, UTF8_LOCALE) == NULL) {
		FUNC1(stderr, "setlocale(LC_CTYPE, \"%s\") failed\n",
		    UTF8_LOCALE);
		return 1;
	}

	if (sizeof(wchar_t) < 4) {
		FUNC1(stderr, "wchar_t is only %zu bytes\n",
		    sizeof(wchar_t));
		return 1;
	}

	if ((width = FUNC5(L' ')) != 1) {
		FUNC1(stderr, "wcwidth(L' ') returned %d\n", width);
		return 1;
	}

	FUNC0(STDERR_FILENO, STDOUT_FILENO);
	wc = L'*';
	if (FUNC3(wc) != (wint_t)wc) {
		FUNC2("bad putwchar return value\n", stderr);
		return 1;
	}

	return 0;
}