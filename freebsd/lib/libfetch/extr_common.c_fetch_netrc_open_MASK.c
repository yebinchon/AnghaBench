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
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(void)
{
	struct passwd *pwd;
	char fn[PATH_MAX];
	const char *p;
	int fd, serrno;

	if ((p = FUNC2("NETRC")) != NULL) {
		FUNC0("NETRC=%s\n", p);
		if (FUNC6(fn, sizeof(fn), "%s", p) >= (int)sizeof(fn)) {
			FUNC1("$NETRC specifies a file name "
			    "longer than PATH_MAX");
			return (-1);
		}
	} else {
		if ((p = FUNC2("HOME")) == NULL) {
			if ((pwd = FUNC3(FUNC4())) == NULL ||
			    (p = pwd->pw_dir) == NULL)
				return (-1);
		}
		if (FUNC6(fn, sizeof(fn), "%s/.netrc", p) >= (int)sizeof(fn))
			return (-1);
	}

	if ((fd = FUNC5(fn, O_RDONLY)) < 0) {
		serrno = errno;
		FUNC0("%s: %s\n", fn, FUNC7(serrno));
		errno = serrno;
	}
	return (fd);
}