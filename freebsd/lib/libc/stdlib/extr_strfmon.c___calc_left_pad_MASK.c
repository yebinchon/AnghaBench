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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char*,char**) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int flags, char *cur_symb) {

	char cs_precedes, sep_by_space, sign_posn, *signstr;
	int left_chars = 0;

	FUNC0(flags, &cs_precedes, &sep_by_space, &sign_posn, &signstr);

	if (cs_precedes != 0) {
		left_chars += FUNC1(cur_symb);
		if (sep_by_space != 0)
			left_chars++;
	}

	switch (sign_posn) {
		case 1:
			left_chars += FUNC1(signstr);
			break;
		case 3:
		case 4:
			if (cs_precedes != 0)
				left_chars += FUNC1(signstr);
	}
	return (left_chars);
}