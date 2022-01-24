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
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 int /*<<< orphan*/  c1 ; 
 int /*<<< orphan*/ * c42 ; 
 int /*<<< orphan*/ * c43 ; 
 int /*<<< orphan*/ * c44 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/ * t0 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int tnr ; 

__attribute__((used)) static void
FUNC9(void)
{
	const char str42[] = "2a";
	MINT *t2;
	char *s;

	FUNC0(c42, c1, t0);
	FUNC8(c43, t0, "madd0");
	FUNC0(t0, c1, t0);
	FUNC8(c44, t0, "madd1");
	FUNC3(t0, c1, t0);
	FUNC8(c43, t0, "msub0");
	FUNC3(t0, c1, t0);
	FUNC8(c42, t0, "msub1");
	FUNC2(c42, t0);
	FUNC8(c42, t0, "move0");

	t2 = FUNC5(str42);
	FUNC8(c42, t2, "xtom");
	s = FUNC4(t2);
	if (FUNC7(str42, s) == 0)
		FUNC6("ok %d - %s\n", ++tnr, "mtox0");
	else
		FUNC6("not ok %d - %s\n", ++tnr, "mtox0");
	FUNC1(t2);
}