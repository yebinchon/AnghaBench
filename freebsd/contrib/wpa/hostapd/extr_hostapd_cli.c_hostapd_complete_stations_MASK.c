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
 char** FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  stations ; 

__attribute__((used)) static char ** FUNC2(const char *str, int pos)
{
	int arg = FUNC1(str, pos);
	char **res = NULL;

	switch (arg) {
	case 1:
		res = FUNC0(&stations);
		break;
	}

	return res;
}