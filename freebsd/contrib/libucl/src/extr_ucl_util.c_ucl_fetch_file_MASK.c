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
struct stat {size_t st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  UT_string ;

/* Variables and functions */
 unsigned char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool
FUNC7 (const unsigned char *filename, unsigned char **buf, size_t *buflen,
		UT_string **err, bool must_exist)
{
	int fd;
	struct stat st;

	if (FUNC3 (filename, &st) == -1 || !FUNC0 (st.st_mode)) {
		if (must_exist) {
			FUNC5 (err, "cannot stat file %s: %s",
					filename, FUNC4 (errno));
		}
		return false;
	}
	if (st.st_size == 0) {
		/* Do not map empty files */
		*buf = NULL;
		*buflen = 0;
	}
	else {
		if ((fd = FUNC2 (filename, O_RDONLY)) == -1) {
			FUNC5 (err, "cannot open file %s: %s",
					filename, FUNC4 (errno));
			return false;
		}
		if ((*buf = FUNC6 (NULL, st.st_size, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED) {
			FUNC1 (fd);
			FUNC5 (err, "cannot mmap file %s: %s",
					filename, FUNC4 (errno));
			*buf = NULL;

			return false;
		}
		*buflen = st.st_size;
		FUNC1 (fd);
	}

	return true;
}