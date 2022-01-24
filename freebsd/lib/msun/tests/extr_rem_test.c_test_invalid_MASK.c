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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long double,long double) ; 
 int /*<<< orphan*/  FUNC3 (long double,long double) ; 
 int /*<<< orphan*/  FUNC4 (long double,long double) ; 
 int /*<<< orphan*/  FUNC5 (long double,long double,int*) ; 
 int /*<<< orphan*/  FUNC6 (long double,long double,int*) ; 
 int /*<<< orphan*/  FUNC7 (long double,long double,int*) ; 

__attribute__((used)) static void
FUNC8(long double x, long double y)
{
	int q;

	q = 0xdeadbeef;

	FUNC0(FUNC1(FUNC2(x, y)));
	FUNC0(FUNC1(FUNC5(x, y, &q)));
#ifdef STRICT
	assert(q == 0xdeadbeef);
#endif

	FUNC0(FUNC1(FUNC3(x, y)));
	FUNC0(FUNC1(FUNC6(x, y, &q)));
#ifdef STRICT
	assert(q == 0xdeadbeef);
#endif

	FUNC0(FUNC1(FUNC4(x, y)));
	FUNC0(FUNC1(FUNC7(x, y, &q)));
#ifdef STRICT
	assert(q == 0xdeadbeef);
#endif
}