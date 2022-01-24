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
struct stat {int st_size; } ;
struct futx {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EFTYPE ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 

__attribute__((used)) static FILE *
FUNC4(const char *file)
{
	FILE *fp;
	struct stat sb;
	int fd;

	fd = FUNC2(file, O_CREAT|O_RDWR|O_EXLOCK|O_CLOEXEC, 0644);
	if (fd < 0)
		return (NULL);

	/* Safety check: never use broken files. */
	if (FUNC1(fd, &sb) != -1 && sb.st_size % sizeof(struct futx) != 0) {
		FUNC0(fd);
		errno = EFTYPE;
		return (NULL);
	}

	fp = FUNC3(fd, "r+");
	if (fp == NULL) {
		FUNC0(fd);
		return (NULL);
	}
	return (fp);
}