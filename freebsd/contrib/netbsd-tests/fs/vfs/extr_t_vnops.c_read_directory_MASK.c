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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EISDIR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 scalar_t__ errno ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*,int,int) ; 
 int FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int) ; 

__attribute__((used)) static void
FUNC8(const atf_tc_t *tc, const char *mp)
{
	char buf[1024];
	int fd, res;
	ssize_t size;

	FUNC2();
	fd = FUNC5(".", O_DIRECTORY | O_RDONLY, 0777);
	FUNC1(fd != -1);

	size = FUNC6(fd, buf, sizeof(buf), 0);
	FUNC0(size != -1 || errno == EISDIR);
	size = FUNC7(fd, buf, sizeof(buf));
	FUNC0(size != -1 || errno == EISDIR);

	res = FUNC4(fd);
	FUNC1(res != -1);
	FUNC3();
}