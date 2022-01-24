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
 scalar_t__ CATEGORY_LEN ; 
 int ENAMETOOLONG ; 
 scalar_t__ ENCODING_LEN ; 
 int ENOMEM ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/ * _PATH_LOCALE ; 
 int /*<<< orphan*/ * _PathLocale ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 

int
FUNC4(void)
{
	if (_PathLocale == NULL) {
		char *p = FUNC0("PATH_LOCALE");

		if (p != NULL && !FUNC1()) {
			if (FUNC3(p) + 1/*"/"*/ + ENCODING_LEN +
			    1/*"/"*/ + CATEGORY_LEN >= PATH_MAX)
				return (ENAMETOOLONG);
			_PathLocale = FUNC2(p);
			if (_PathLocale == NULL)
				return (errno == 0 ? ENOMEM : errno);
		} else
			_PathLocale = _PATH_LOCALE;
	}
	return (0);
}