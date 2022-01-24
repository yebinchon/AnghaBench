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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TESTCONTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *restrict file)
{
	FILE *f;
	size_t written;

	f = FUNC2(file, "w");
	FUNC0(f != NULL);
	written = FUNC3(TESTCONTENT, 1, FUNC4(TESTCONTENT), f);
	FUNC1(f);
	FUNC0(written == FUNC4(TESTCONTENT));
}