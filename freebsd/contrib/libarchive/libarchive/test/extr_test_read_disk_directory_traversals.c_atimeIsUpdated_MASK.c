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
struct stat {int st_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(void)
{
	const char *fn = "fs_noatime";
	struct stat st;
#if defined(_WIN32) && !defined(CYGWIN)
	char *buff = NULL;
	char *ptr;
	int r;

	r = systemf("fsutil behavior query disableLastAccess > query_atime");
	if (r == 0) {
		buff = slurpfile(NULL, "query_atime");
		if (buff != NULL) {
			ptr = buff;
			while(*ptr != '\0' && !isdigit(*ptr)) {
				ptr++;
			}
			if (*ptr == '0') {
				free(buff);
				return(1);
			} else if (*ptr == '1' || *ptr == '2') {
				free(buff);
				return(0);
			}
			free(buff);
		}
	}
#endif
	if (!FUNC0(fn, 0666, "a"))
		return (0);
	if (!FUNC2(fn, 1, 0, 1, 0))
		return (0);
	/* Test the file contents in order to update its atime. */
	if (!FUNC1("a", fn))
		return (0);
	if (FUNC6(fn, &st) != 0)
		return (0);
	/* Is atime updated? */
	if (st.st_atime > 1)
		return (1);
	return (0);
}