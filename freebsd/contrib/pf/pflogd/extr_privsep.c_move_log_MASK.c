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
typedef  int /*<<< orphan*/  ren ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int PATH_MAX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(const char *name)
{
	char ren[PATH_MAX];
	int len;

	for (;;) {
		int fd;

		len = FUNC5(ren, sizeof(ren), "%s.bad.%08x",
		    name, FUNC0());
		if (len >= sizeof(ren)) {
			FUNC2(LOG_ERR, "[priv] new name too long");
			return (1);
		}

		/* lock destinanion */
		fd = FUNC3(ren, O_CREAT|O_EXCL, 0);
		if (fd >= 0) {
			FUNC1(fd);
			break;
		}
		/* if file exists, try another name */
		if (errno != EEXIST && errno != EINTR) {
			FUNC2(LOG_ERR, "[priv] failed to create new name: %s",
			    FUNC6(errno));
			return (1);			
		}
	}

	if (FUNC4(name, ren)) {
		FUNC2(LOG_ERR, "[priv] failed to rename %s to %s: %s",
		    name, ren, FUNC6(errno));
		return (1);
	}

	FUNC2(LOG_NOTICE,
	       "[priv]: log file %s moved to %s", name, ren);

	return (0);
}