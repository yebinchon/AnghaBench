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
struct archive {char* current_code; int /*<<< orphan*/  current_oemcp; int /*<<< orphan*/  current_codepage; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static const char *
FUNC4(struct archive *a)
{
	const char *cur_charset;

	if (a == NULL)
		cur_charset = FUNC0("");
	else {
		cur_charset = FUNC0(a->current_code);
		if (a->current_code == NULL) {
			a->current_code = FUNC3(cur_charset);
			a->current_codepage = FUNC1();
			a->current_oemcp = FUNC2();
		}
	}
	return (cur_charset);
}