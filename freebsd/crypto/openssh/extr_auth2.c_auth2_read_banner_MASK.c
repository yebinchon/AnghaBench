#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  banner; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  read ; 
 char* FUNC5 (size_t) ; 

char *
FUNC6(void)
{
	struct stat st;
	char *banner = NULL;
	size_t len, n;
	int fd;

	if ((fd = FUNC4(options.banner, O_RDONLY)) == -1)
		return (NULL);
	if (FUNC3(fd, &st) == -1) {
		FUNC1(fd);
		return (NULL);
	}
	if (st.st_size <= 0 || st.st_size > 1*1024*1024) {
		FUNC1(fd);
		return (NULL);
	}

	len = (size_t)st.st_size;		/* truncate */
	banner = FUNC5(len + 1);
	n = FUNC0(read, fd, banner, len);
	FUNC1(fd);

	if (n != len) {
		FUNC2(banner);
		return (NULL);
	}
	banner[n] = '\0';

	return (banner);
}