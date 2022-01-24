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
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(const char *name, const char *file)
{
	ssize_t n;
	size_t sz;
	int error, fd, val;

	fd = FUNC3(file, O_RDONLY);
	FUNC0(fd >= 0);
	sz = sizeof(val);
	n = FUNC4(fd, &val, sz);
	FUNC0(n >= 0 && (size_t)n == sz);
	error = FUNC7(file);
	FUNC0(error == 0);
	error = FUNC2(fd);
	FUNC0(error == 0);

	error = FUNC6(name, NULL, NULL, &val, sz);
	FUNC1(error == 0,
	    "sysctlbyname(%s): %s", name, FUNC5(errno));
}