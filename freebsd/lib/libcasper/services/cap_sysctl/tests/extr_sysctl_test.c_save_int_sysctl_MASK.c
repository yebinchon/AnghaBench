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
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int*,size_t) ; 

__attribute__((used)) static void
FUNC7(const char *name, const char *file)
{
	ssize_t n;
	size_t sz;
	int error, fd, val;

	sz = sizeof(val);
	error = FUNC5(name, &val, &sz, NULL, 0);
	FUNC1(error == 0,
	    "sysctlbyname(%s): %s", name, FUNC4(errno));

	fd = FUNC3(file, O_CREAT | O_WRONLY, 0600);
	FUNC1(fd >= 0, "open(%s): %s", file, FUNC4(errno));
	n = FUNC6(fd, &val, sz);
	FUNC0(n >= 0 && (size_t)n == sz);
	error = FUNC2(fd);
	FUNC0(error == 0);
}