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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USES_SYMLINKS ; 
 int FUNC5 (char const*,struct stat*) ; 
 int FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(const atf_tc_t *tc, const char *mp)
{
	const char *src, *dst;
	int res;
	struct stat st;

	USES_SYMLINKS;

	FUNC2();

	src = "source";
	dst = "destination";

	res = FUNC6(src, dst);
	FUNC1(res != -1);
	res = FUNC5(dst, &st);
	FUNC1(res != -1);

	FUNC0(FUNC4(st.st_mode) != 0);
	FUNC0(st.st_size == (off_t)FUNC7(src));

	FUNC3();
}