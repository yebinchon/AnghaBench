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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct stat*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int,size_t) ; 

unsigned char *
FUNC4(const char *path, size_t *len)
{
	struct stat st;
	unsigned char *ucp;
	int fd;

    	if (len)
		*len = 0;
	if ((fd = FUNC2(path, O_RDONLY)) < 0)
		return (NULL);
	FUNC1(fd, &st);
	ucp = FUNC3(fd, st.st_size);
	FUNC0(fd);
	if (len != NULL && ucp != NULL)
		*len = st.st_size;
	return (ucp);
}