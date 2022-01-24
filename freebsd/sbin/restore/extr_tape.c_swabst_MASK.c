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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int* FUNC2 (int*,int) ; 
 int* FUNC3 (int*,int) ; 
 int* FUNC4 (int*,int) ; 

void
FUNC5(u_char *cp, u_char *sp)
{
	int n = 0;

	while (*cp) {
		switch (*cp) {
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			n = (n * 10) + (*cp++ - '0');
			continue;

		case 's': case 'w': case 'h':
			if (n == 0)
				n = 1;
			sp = FUNC4(sp, n);
			break;

		case 'l':
			if (n == 0)
				n = 1;
			sp = FUNC2(sp, n);
			break;

		case 'q':
			if (n == 0)
				n = 1;
			sp = FUNC3(sp, n);
			break;

		case 'b':
			if (n == 0)
				n = 1;
			sp += n;
			break;

		default:
			FUNC1(stderr, "Unknown conversion character: %c\n",
			    *cp);
			FUNC0(0);
			break;
		}
		cp++;
		n = 0;
	}
}