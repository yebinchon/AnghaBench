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
 int EX_OK ; 
 int /*<<< orphan*/  c0 ; 
 int /*<<< orphan*/  c1 ; 
 int /*<<< orphan*/  c10 ; 
 int /*<<< orphan*/  c14 ; 
 int /*<<< orphan*/  c15 ; 
 int /*<<< orphan*/  c2 ; 
 int /*<<< orphan*/  c25 ; 
 int /*<<< orphan*/  c3 ; 
 int /*<<< orphan*/  c42 ; 
 int /*<<< orphan*/  c43 ; 
 int /*<<< orphan*/  c44 ; 
 int /*<<< orphan*/  c45 ; 
 int /*<<< orphan*/  c5 ; 
 int /*<<< orphan*/  c6 ; 
 int /*<<< orphan*/  c8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  t0 ; 
 int /*<<< orphan*/  t1 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{

	FUNC2("1..25\n");

	/*
	 * Init "constants" variables - done in this somewhat
	 * cumbersome way to in theory be able to check for memory
	 * leaks.
	 */
	c0 = FUNC0(0);
	c1 = FUNC0(1);
	c2 = FUNC0(2);
	c3 = FUNC0(3);
	c5 = FUNC0(5);
	c6 = FUNC0(6);
	c8 = FUNC0(8);
	c10 = FUNC0(10);
	c14 = FUNC0(14);
	c15 = FUNC0(15);
	c25 = FUNC0(25);
	c42 = FUNC0(42);
	c43 = FUNC0(43);
	c44 = FUNC0(44);
	c45 = FUNC0(45);

	// Init temp variables
	t0 = FUNC0(0);
	t1 = FUNC0(0);

	// Run tests
	FUNC8();
	FUNC4();
	FUNC3();
	FUNC6();
	FUNC7();
	FUNC5();

	// Cleanup
	FUNC1(c0);
	FUNC1(c1);
	FUNC1(c2);
	FUNC1(c3);
	FUNC1(c5);
	FUNC1(c6);
	FUNC1(c8);
	FUNC1(c10);
	FUNC1(c14);
	FUNC1(c15);
	FUNC1(c25);
	FUNC1(c42);
	FUNC1(c43);
	FUNC1(c44);
	FUNC1(c45);
	FUNC1(t0);
	FUNC1(t1);

	return (EX_OK);
}