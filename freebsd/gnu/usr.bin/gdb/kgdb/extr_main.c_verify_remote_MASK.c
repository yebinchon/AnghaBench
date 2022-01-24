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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* remote ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	char path[PATH_MAX];
	struct stat st;

	if (FUNC5(remote, &st) != 0) {
		FUNC4(path, sizeof(path), "/dev/%s", remote);
		if (FUNC5(path, &st) != 0)
			return;
		FUNC3(remote);
		remote = FUNC6(path);
	}
	if (!FUNC0(st.st_mode) && !FUNC1(st.st_mode))
		FUNC2(1, "%s: not a special file, FIFO or socket", remote);
}