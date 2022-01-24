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
struct passwd {int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int FUNC9 (char const*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,struct passwd*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static FILE *
FUNC13(const char *file, struct passwd *pw, int strict_modes,
    int log_missing, char *file_type)
{
	char line[1024];
	struct stat st;
	int fd;
	FILE *f;

	if ((fd = FUNC9(file, O_RDONLY|O_NONBLOCK)) == -1) {
		if (log_missing || errno != ENOENT)
			FUNC3("Could not open %s '%s': %s", file_type, file,
			   FUNC11(errno));
		return NULL;
	}

	if (FUNC7(fd, &st) < 0) {
		FUNC2(fd);
		return NULL;
	}
	if (!FUNC0(st.st_mode)) {
		FUNC8("User %s %s %s is not a regular file",
		    pw->pw_name, file_type, file);
		FUNC2(fd);
		return NULL;
	}
	FUNC12(fd);
	if ((f = FUNC5(fd, "r")) == NULL) {
		FUNC2(fd);
		return NULL;
	}
	if (strict_modes &&
	    FUNC10(FUNC6(f), file, pw, line, sizeof(line)) != 0) {
		FUNC4(f);
		FUNC8("Authentication refused: %s", line);
		FUNC1("Ignored %s: %s", file_type, line);
		return NULL;
	}

	return f;
}