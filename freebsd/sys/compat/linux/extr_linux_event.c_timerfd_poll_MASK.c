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
struct timerfd {scalar_t__ tfd_count; int /*<<< orphan*/  tfd_lock; int /*<<< orphan*/  tfd_sel; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; struct timerfd* f_data; } ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXTFD ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
	struct timerfd *tfd;
	int revents = 0;

	tfd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXTFD || tfd == NULL)
		return (POLLERR);

	FUNC0(&tfd->tfd_lock);
	if ((events & (POLLIN|POLLRDNORM)) && tfd->tfd_count > 0)
		revents |= events & (POLLIN|POLLRDNORM);
	if (revents == 0)
		FUNC2(td, &tfd->tfd_sel);
	FUNC1(&tfd->tfd_lock);

	return (revents);
}