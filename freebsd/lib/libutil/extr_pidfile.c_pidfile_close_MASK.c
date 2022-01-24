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
struct pidfh {int /*<<< orphan*/  pf_dirfd; int /*<<< orphan*/  pf_fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct pidfh*) ; 
 int FUNC2 (struct pidfh*) ; 

int
FUNC3(struct pidfh *pfh)
{
	int error;

	error = FUNC2(pfh);
	if (error != 0) {
		errno = error;
		return (-1);
	}

	if (FUNC0(pfh->pf_fd) == -1)
		error = errno;
	if (FUNC0(pfh->pf_dirfd) == -1 && error == 0)
		error = errno;

	FUNC1(pfh);
	if (error != 0) {
		errno = error;
		return (-1);
	}
	return (0);
}