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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Cell ;
typedef  double Awkfloat ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Cell *FUNC5(Node **a, int nnn)		/* index(a[0], a[1]) */
{
	Cell *x, *y, *z;
	char *s1, *s2, *p1, *p2, *q;
	Awkfloat v = 0.0;

	x = FUNC0(a[0]);
	s1 = FUNC1(x);
	y = FUNC0(a[1]);
	s2 = FUNC1(y);

	z = FUNC2();
	for (p1 = s1; *p1 != '\0'; p1++) {
		for (q=p1, p2=s2; *p2 != '\0' && *q == *p2; q++, p2++)
			;
		if (*p2 == '\0') {
			v = (Awkfloat) (p1 - s1 + 1);	/* origin 1 */
			break;
		}
	}
	FUNC4(x);
	FUNC4(y);
	FUNC3(z, v);
	return(z);
}