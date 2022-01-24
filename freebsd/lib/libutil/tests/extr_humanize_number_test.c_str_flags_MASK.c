#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int value; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_STR_FLAGS_RESULT ; 
 TYPE_1__* flags ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* separator ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(int hn_flags, char *noFlags) {
	size_t i;
	char * result;

	result = FUNC0(MAX_STR_FLAGS_RESULT);
	result[0] = '\0';

	for (i = 0; i < sizeof flags / sizeof *flags; i++) {
		if (hn_flags & flags[i].value) {
			if (*result != 0)
				FUNC1(result, separator,
				    MAX_STR_FLAGS_RESULT);
			FUNC1(result, flags[i].name, MAX_STR_FLAGS_RESULT);
		}
	}

	if (FUNC2(result) == 0)
		FUNC1(result, noFlags, MAX_STR_FLAGS_RESULT);
	return result;
}