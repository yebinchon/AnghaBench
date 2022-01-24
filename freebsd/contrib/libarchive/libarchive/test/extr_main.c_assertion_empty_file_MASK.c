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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char const*,struct stat*) ; 

int
FUNC9(const char *filename, int line, const char *f1)
{
	char buff[1024];
	struct stat st;
	ssize_t s;
	FILE *f;

	FUNC0(filename, line);

	if (FUNC8(f1, &st) != 0) {
		FUNC2(filename, line, "Stat failed: %s", f1);
		FUNC1(NULL);
		return (0);
	}
	if (st.st_size == 0)
		return (1);

	FUNC2(filename, line, "File should be empty: %s", f1);
	FUNC7("    File size: %d\n", (int)st.st_size);
	FUNC7("    Contents:\n");
	f = FUNC4(f1, "rb");
	if (f == NULL) {
		FUNC7("    Unable to open %s\n", f1);
	} else {
		s = ((off_t)sizeof(buff) < st.st_size) ?
		    (ssize_t)sizeof(buff) : (ssize_t)st.st_size;
		s = FUNC5(buff, 1, s, f);
		FUNC6(buff, NULL, s, 0);
		FUNC3(f);
	}
	FUNC1(NULL);
	return (0);
}