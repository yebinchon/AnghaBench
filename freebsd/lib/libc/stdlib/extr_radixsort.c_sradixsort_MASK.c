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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  SETUP ; 
 int THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ ** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int
FUNC4(const u_char **a, int n, const u_char *tab, u_int endch)
{
	const u_char *tr, **ta;
	int c;
	u_char tr0[256];

	SETUP;
	if (n < THRESHOLD)
		FUNC3(a, n, 0, tr, endch);
	else {
		if ((ta = FUNC1(n * sizeof(a))) == NULL)
			return (-1);
		FUNC2(a, ta, n, 0, tr, endch);
		FUNC0(ta);
	}
	return (0);
}