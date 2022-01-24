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
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ ERR_LIB_SYS ; 
 unsigned long FUNC2 () ; 
 char* FUNC3 (unsigned long) ; 
 scalar_t__ SYS_F_FOPEN ; 
 scalar_t__ SYS_F_FREAD ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(const char* s, const char *path)
{
	unsigned long err;
	err = FUNC2();
	if (FUNC1(err) == ERR_LIB_SYS &&
		(FUNC0(err) == SYS_F_FOPEN ||
		 FUNC0(err) == SYS_F_FREAD) ) {
		FUNC5(stderr, "error: %s\n%s: %s\n",
			s, path, FUNC3(err));
		FUNC4(1);
	} else {
		FUNC6(s);
	}
}