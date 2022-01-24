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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 char* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_PRIVATE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,size_t) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 scalar_t__ off ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 size_t page ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,char const*,size_t) ; 

__attribute__((used)) static const char *
FUNC15(const char *garbage, int flags)
{
	char *buf, *map = MAP_FAILED;
	const char *str = NULL;
	size_t len;
	int fd, rv;

	/*
	 * Create a temporary file, write
	 * one page to it, and map the file.
	 */
	buf = FUNC4(page);

	if (buf == NULL)
		return NULL;

	FUNC6(buf, 'x', page);

	fd = FUNC10(path, O_RDWR | O_CREAT, 0700);

	if (fd < 0) {
		FUNC2(buf);
		return "failed to open";
	}

	FUNC0(FUNC14(fd, buf, page) != -1, "write(2) failed: %s",
	    FUNC11(errno));

	map = FUNC7(NULL, page, PROT_READ | PROT_WRITE, MAP_FILE|MAP_PRIVATE,
	     fd, 0);

	if (map == MAP_FAILED) {
		str = "failed to map";
		goto out;
	}

	/*
	 * Seek to an arbitrary offset and
	 * write garbage to this position.
	 */
	if (FUNC3(fd, off, SEEK_SET) != off) {
		str = "failed to seek";
		goto out;
	}

	len = FUNC12(garbage);
	rv = FUNC14(fd, garbage, len);

	if (rv != (ssize_t)len) {
		str = "failed to write garbage";
		goto out;
	}

	/*
	 * Synchronize the mapping and verify
	 * that garbage is at the given offset.
	 */
	if (FUNC8(map, page, flags) != 0) {
		str = "failed to msync";
		goto out;
	}

	if (FUNC5(map + off, garbage, len) != 0) {
		str = "msync did not synchronize";
		goto out;
	}

out:
	FUNC2(buf);

	(void)FUNC1(fd);
	(void)FUNC13(path);

	if (map != MAP_FAILED)
		(void)FUNC9(map, page);

	return str;
}