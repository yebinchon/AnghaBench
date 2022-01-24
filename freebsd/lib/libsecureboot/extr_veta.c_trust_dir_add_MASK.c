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
struct dirent {char* d_name; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  fbuf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static size_t
FUNC7(const char *trust)
{
	char fbuf[MAXPATHLEN];
	DIR *dh;
	struct dirent *de;
	struct stat st;
	ssize_t sz;
	size_t num;

	if (!(dh = FUNC2(trust)))
		return (0);
	for (num = 0, de = FUNC3(dh); de; de = FUNC3(dh)) {
		if (de->d_name[0] == '.')
			continue;
		sz = FUNC4(fbuf, sizeof(fbuf), "%s/%s", trust, de->d_name);
		if (sz >= (ssize_t)sizeof(fbuf))
			continue;
		if (FUNC5(fbuf, &st) < 0 || FUNC0(st.st_mode))
			continue;
		num += FUNC6(fbuf);
	}
	FUNC1(dh);
	return (num);
}