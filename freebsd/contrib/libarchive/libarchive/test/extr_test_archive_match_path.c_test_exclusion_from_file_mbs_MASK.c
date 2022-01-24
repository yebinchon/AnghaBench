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
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct archive *m;

	/* Test1: read exclusion patterns from file */
	if (!FUNC3((m = FUNC2()) != NULL))
		return;
	FUNC4(m, 0,
	    FUNC0(m, "exclusion", 0));
	FUNC5(m);
	/* Clean up. */
	FUNC1(m);

	/* Test2: read exclusion patterns in a null separator from file */
	if (!FUNC3((m = FUNC2()) != NULL))
		return;
	/* Test for pattern reading from file */
	FUNC4(m, 0,
	    FUNC0(m, "exclusion_null", 1));
	FUNC5(m);
	/* Clean up. */
	FUNC1(m);
}