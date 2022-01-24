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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  outputFile ; 
 scalar_t__ outputFileOpened ; 

void
FUNC4(const char * expected,
		     const char * actual) {
	if (outputFileOpened)
		FUNC2(outputFile);

	FILE * e = FUNC3(expected,"rb");
	FILE * a = FUNC3(actual,"rb");
	FUNC1(e);
	FUNC1(a);

	FUNC0(e, a);
}