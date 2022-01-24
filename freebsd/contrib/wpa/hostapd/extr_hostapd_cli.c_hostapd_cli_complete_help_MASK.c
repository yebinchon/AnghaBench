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
 int FUNC0 (char const*,int) ; 
 char** FUNC1 () ; 

__attribute__((used)) static char ** FUNC2(const char *str, int pos)
{
	int arg = FUNC0(str, pos);
	char **res = NULL;

	switch (arg) {
	case 1:
		res = FUNC1();
		break;
	}

	return res;
}