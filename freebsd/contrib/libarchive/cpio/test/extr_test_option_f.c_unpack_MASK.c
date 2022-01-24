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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  testprog ; 

__attribute__((used)) static void
FUNC5(const char *dirname, const char *option)
{
	int r;

	FUNC2(dirname, 0755);
	FUNC0(dirname);
	FUNC3("test_option_f.cpio");
	r = FUNC4("%s -i %s < test_option_f.cpio > copy-no-a.out 2>copy-no-a.err", testprog, option);
	FUNC1(0, r);
	FUNC0("..");
}