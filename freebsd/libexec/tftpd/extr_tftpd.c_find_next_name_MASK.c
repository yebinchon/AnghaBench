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
typedef  int /*<<< orphan*/  yyyymmdd ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int EACCESS ; 
 int EEXIST ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  newfile_format ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,int) ; 
 size_t FUNC3 (char*,int,int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(char *filename, int *fd)
{
	int i;
	time_t tval;
	size_t len;
	struct tm lt;
	char yyyymmdd[MAXPATHLEN];
	char newname[MAXPATHLEN];

	/* Create the YYYYMMDD part of the filename */
	FUNC6(&tval);
	lt = *FUNC0(&tval);
	len = FUNC3(yyyymmdd, sizeof(yyyymmdd), newfile_format, &lt);
	if (len == 0) {
		FUNC5(LOG_WARNING,
			"Filename suffix too long (%d characters maximum)",
			MAXPATHLEN);
		return (EACCESS);
	}

	/* Make sure the new filename is not too long */
	if (FUNC4(filename) > MAXPATHLEN - len - 5) {
		FUNC5(LOG_WARNING,
			"Filename too long (%zd characters, %zd maximum)",
			FUNC4(filename), MAXPATHLEN - len - 5);
		return (EACCESS);
	}

	/* Find the first file which doesn't exist */
	for (i = 0; i < 100; i++) {
		FUNC2(newname, "%s.%s.%02d", filename, yyyymmdd, i);
		*fd = FUNC1(newname,
		    O_WRONLY | O_CREAT | O_EXCL, 
		    S_IRUSR | S_IWUSR | S_IRGRP |
		    S_IWGRP | S_IROTH | S_IWOTH);
		if (*fd > 0)
			return 0;
	}

	return (EEXIST);
}