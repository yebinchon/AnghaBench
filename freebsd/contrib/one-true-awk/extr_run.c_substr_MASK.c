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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

Cell *FUNC8(Node **a, int nnn)		/* substr(a[0], a[1], a[2]) */
{
	int k, m, n;
	char *s;
	int temp;
	Cell *x, *y, *z = NULL;

	x = FUNC1(a[0]);
	y = FUNC1(a[1]);
	if (a[2] != NULL)
		z = FUNC1(a[2]);
	s = FUNC3(x);
	k = FUNC6(s) + 1;
	if (k <= 1) {
		FUNC7(x);
		FUNC7(y);
		if (a[2] != NULL) {
			FUNC7(z);
		}
		x = FUNC4();
		FUNC5(x, "");
		return(x);
	}
	m = (int) FUNC2(y);
	if (m <= 0)
		m = 1;
	else if (m > k)
		m = k;
	FUNC7(y);
	if (a[2] != NULL) {
		n = (int) FUNC2(z);
		FUNC7(z);
	} else
		n = k - 1;
	if (n < 0)
		n = 0;
	else if (n > k - m)
		n = k - m;
	   FUNC0( ("substr: m=%d, n=%d, s=%s\n", m, n, s) );
	y = FUNC4();
	temp = s[n+m-1];	/* with thanks to John Linderman */
	s[n+m-1] = '\0';
	FUNC5(y, s + m - 1);
	s[n+m-1] = temp;
	FUNC7(x);
	return(y);
}