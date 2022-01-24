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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct _citrus_region {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 void* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_PRIVATE ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct stat*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _citrus_region*,void*,size_t) ; 
 int errno ; 
 void* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

int
FUNC6(struct _citrus_region * __restrict r,
    const char * __restrict path)
{
	struct stat st;
	void *head;
	int fd, ret;

	ret = 0;

	FUNC4(r, NULL, 0);

	if ((fd = FUNC3(path, O_RDONLY | O_CLOEXEC)) == -1)
		return (errno);

	if (FUNC2(fd, &st)  == -1) {
		ret = errno;
		goto error;
	}
	if (!FUNC0(st.st_mode)) {
		ret = EOPNOTSUPP;
		goto error;
	}

	head = FUNC5(NULL, (size_t)st.st_size, PROT_READ, MAP_FILE|MAP_PRIVATE,
	    fd, (off_t)0);
	if (head == MAP_FAILED) {
		ret = errno;
		goto error;
	}
	FUNC4(r, head, (size_t)st.st_size);

error:
	(void)FUNC1(fd);
	return (ret);
}