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
 scalar_t__ ENAMETOOLONG ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  _PC_NAME_MAX ; 
 int /*<<< orphan*/  _PC_NO_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,size_t) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,int,int) ; 
 long FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(const atf_tc_t *tc, const char *mp)
{
	char *name;
	int fd;
	long val;
	size_t len;

	if (FUNC4(mp) == -1)
		FUNC0("chdir mountpoint");

	val = FUNC7(".", _PC_NAME_MAX);
	if (val == -1)
		FUNC0("pathconf");

	len = val + 1;
	name = FUNC2(len+1);
	if (name == NULL)
		FUNC0("malloc");

	FUNC3(name, 'a', len);
	*(name+len) = '\0';

	val = FUNC7(".", _PC_NO_TRUNC);
	if (val == -1)
		FUNC0("pathconf");

	fd = FUNC6(name, O_RDWR|O_CREAT, 0666);
	if (val != 0 && (fd != -1 || errno != ENAMETOOLONG))
		FUNC0("open");

	if (val == 0 && FUNC5(fd) == -1)
		FUNC0("close");
	if (val == 0 && FUNC8(name) == -1)
		FUNC0("unlink");

	FUNC1(name);

	FUNC4("/");
}