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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; struct eventfd* f_data; } ;
struct eventfd {scalar_t__ efd_count; int /*<<< orphan*/  efd_lock; int /*<<< orphan*/  efd_sel; } ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXEFD ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
	struct eventfd *efd;
	int revents = 0;

	efd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXEFD || efd == NULL)
		return (POLLERR);

	FUNC0(&efd->efd_lock);
	if ((events & (POLLIN|POLLRDNORM)) && efd->efd_count > 0)
		revents |= events & (POLLIN|POLLRDNORM);
	if ((events & (POLLOUT|POLLWRNORM)) && UINT64_MAX - 1 > efd->efd_count)
		revents |= events & (POLLOUT|POLLWRNORM);
	if (revents == 0)
		FUNC2(td, &efd->efd_sel);
	FUNC1(&efd->efd_lock);

	return (revents);
}