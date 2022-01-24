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
 int _LC_LAST ; 
 char** current_categories ; 
 char* current_locale_string ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static char *
FUNC3(void)
{
	int i;

	(void)FUNC2(current_locale_string, current_categories[1]);

	for (i = 2; i < _LC_LAST; ++i)
		if (FUNC1(current_categories[1], current_categories[i])) {
			for (i = 2; i < _LC_LAST; ++i) {
				(void)FUNC0(current_locale_string, "/");
				(void)FUNC0(current_locale_string,
				    current_categories[i]);
			}
			break;
		}
	return (current_locale_string);
}