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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EEXIST ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (char const*,int,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const atf_tc_t *tc, const char *mp)
{
	const char *name = "hoge";
	int fd;

	FUNC1(FUNC2(mp));
	FUNC1(fd = FUNC4(name, O_RDWR|O_CREAT|O_EXCL, 0666));
	FUNC1(FUNC3(fd));
	FUNC1(FUNC5(name));
	FUNC1(fd = FUNC4(name, O_RDWR|O_CREAT, 0666));
	FUNC1(FUNC3(fd));
	FUNC1(fd = FUNC4(name, O_RDWR|O_CREAT, 0666));
	FUNC1(FUNC3(fd));
	FUNC0(EEXIST,
	    (fd = FUNC4(name, O_RDWR|O_CREAT|O_EXCL, 0666)));
	FUNC1(FUNC5(name));
	FUNC1(FUNC2("/"));
}