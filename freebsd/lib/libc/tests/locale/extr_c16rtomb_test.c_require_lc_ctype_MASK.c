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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *locale_name)
{
	char *lc_ctype_set;

	lc_ctype_set = FUNC2(LC_CTYPE, locale_name);
	if (lc_ctype_set == NULL)
		FUNC1("setlocale(LC_CTYPE, \"%s\") failed; errno=%d",
		    locale_name, errno);

	FUNC0(FUNC3(lc_ctype_set, locale_name) == 0);
}