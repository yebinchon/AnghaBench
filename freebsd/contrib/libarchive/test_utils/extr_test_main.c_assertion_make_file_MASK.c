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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 size_t FUNC8 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,int,int) ; 
 size_t FUNC10 (void const*) ; 
 scalar_t__ FUNC11 (int,void const*,scalar_t__) ; 

int
FUNC12(const char *file, int line,
    const char *path, int mode, int csize, const void *contents)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	/* TODO: Rework this to set file mode as well. */
	FILE *f;
	(void)mode; /* UNUSED */
	assertion_count(file, line);
	f = fopen(path, "wb");
	if (f == NULL) {
		failure_start(file, line, "Could not create file %s", path);
		failure_finish(NULL);
		return (0);
	}
	if (contents != NULL) {
		size_t wsize;

		if (csize < 0)
			wsize = strlen(contents);
		else
			wsize = (size_t)csize;
		if (wsize != fwrite(contents, 1, wsize, f)) {
			fclose(f);
			failure_start(file, line,
			    "Could not write file %s", path);
			failure_finish(NULL);
			return (0);
		}
	}
	fclose(f);
	return (1);
#else
	int fd;
	FUNC0(file, line);
	fd = FUNC9(path, O_CREAT | O_WRONLY, mode >= 0 ? mode : 0644);
	if (fd < 0) {
		FUNC5(file, line, "Could not create %s", path);
		FUNC4(NULL);
		return (0);
	}
	if (0 != FUNC2(path, mode)) {
		FUNC5(file, line, "Could not chmod %s", path);
		FUNC4(NULL);
		FUNC3(fd);
		return (0);
	}
	if (contents != NULL) {
		ssize_t wsize;

		if (csize < 0)
			wsize = (ssize_t)FUNC10(contents);
		else
			wsize = (ssize_t)csize;
		if (wsize != FUNC11(fd, contents, wsize)) {
			FUNC3(fd);
			FUNC5(file, line,
			    "Could not write to %s", path);
			FUNC4(NULL);
			FUNC3(fd);
			return (0);
		}
	}
	FUNC3(fd);
	FUNC1(file, line, path, mode);
	return (1);
#endif
}