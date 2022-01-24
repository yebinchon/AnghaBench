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
struct pidfh {int pf_dirfd; int pf_fd; int /*<<< orphan*/  pf_filename; } ;

/* Variables and functions */
 int EDEADLK ; 
 int FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct pidfh*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pidfh*) ; 

__attribute__((used)) static int
FUNC4(struct pidfh *pfh, int freeit)
{
	int error;

	error = FUNC3(pfh);
	if (error != 0) {
		errno = error;
		return (-1);
	}

	if (FUNC2(pfh->pf_dirfd, pfh->pf_filename, pfh->pf_fd, 0) == -1) {
		if (errno == EDEADLK)
			return (-1);
		error = errno;
	}
	if (FUNC0(pfh->pf_fd) == -1 && error == 0)
		error = errno;
	if (FUNC0(pfh->pf_dirfd) == -1 && error == 0)
		error = errno;
	if (freeit)
		FUNC1(pfh);
	else
		pfh->pf_fd = -1;
	if (error != 0) {
		errno = error;
		return (-1);
	}
	return (0);
}