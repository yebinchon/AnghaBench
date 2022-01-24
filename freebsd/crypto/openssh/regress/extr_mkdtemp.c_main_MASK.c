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
typedef  int /*<<< orphan*/  template ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	const char *base;
	const char *tmpdir;
	char template[PATH_MAX];
	int r;
	char *dir;

	if (argc != 2)
		FUNC7();
	base = argv[1];

	if ((tmpdir = FUNC2("TMPDIR")) == NULL)
		tmpdir = "/tmp";
	r = FUNC6(template, sizeof(template), "%s/%s", tmpdir, base);
	if (r < 0 || (size_t)r >= sizeof(template))
		FUNC1("template string too long");
	dir = FUNC3(template);
	if (dir == NULL) {
		FUNC4("mkdtemp");
		FUNC0(1);
	}
	FUNC5(dir);
	return 0;
}