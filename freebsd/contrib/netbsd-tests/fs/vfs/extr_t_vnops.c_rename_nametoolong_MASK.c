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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  _PC_NAME_MAX ; 
 int /*<<< orphan*/  _PC_NO_TRUNC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,size_t) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (char*,int,int) ; 
 long FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(const atf_tc_t *tc, const char *mp)
{
	char *name;
	int res, fd;
	long val;
	size_t len;

	if (FUNC0(tc))
		FUNC2("rename not supported by file system");

	if (FUNC6(mp) == -1)
		FUNC1("chdir mountpoint");

	val = FUNC9(".", _PC_NAME_MAX);
	if (val == -1)
		FUNC1("pathconf");

	len = val + 1;
	name = FUNC4(len+1);
	if (name == NULL)
		FUNC1("malloc");

	FUNC5(name, 'a', len);
	*(name+len) = '\0';

	fd = FUNC8("dummy", O_RDWR|O_CREAT, 0666);
	if (fd == -1)
		FUNC1("open");
	if (FUNC7(fd) == -1)
		FUNC1("close");

	val = FUNC9(".", _PC_NO_TRUNC);
	if (val == -1)
		FUNC1("pathconf");

	res = FUNC10("dummy", name);
	if (val != 0 && (res != -1 || errno != ENAMETOOLONG))
		FUNC1("rename");

	if (val == 0 && FUNC11(name) == -1)
		FUNC1("unlink");

	FUNC3(name);

	FUNC6("/");
}