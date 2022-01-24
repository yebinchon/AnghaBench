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
struct stat {int st_mode; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC8(lua_State *L, struct stat *sb)
{
	const char *mode_s;
	mode_t mode;

	mode = (sb->st_mode & S_IFMT);
	if (FUNC5(mode))
		mode_s = "file";
	else if (FUNC2(mode))
		mode_s = "directory";
	else if (FUNC4(mode))
		mode_s = "link";
	else if (FUNC6(mode))
		mode_s = "socket";
	else if (FUNC3(mode))
		mode_s = "fifo";
	else if (FUNC1(mode))
		mode_s = "char device";
	else if (FUNC0(mode))
		mode_s = "block device";
	else
		mode_s = "other";

	FUNC7(L, mode_s);
}