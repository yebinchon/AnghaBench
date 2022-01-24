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
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int /*<<< orphan*/ * f_ops; struct eventfd* f_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct eventfd {int /*<<< orphan*/  efd_lock; TYPE_1__ efd_sel; } ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXEFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int /*<<< orphan*/  badfileops ; 
 int /*<<< orphan*/  FUNC0 (struct eventfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, struct thread *td)
{
	struct eventfd *efd;

	efd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXEFD || efd == NULL)
		return (EINVAL);

	FUNC3(&efd->efd_sel);
	FUNC1(&efd->efd_sel.si_note);

	fp->f_ops = &badfileops;
	FUNC2(&efd->efd_lock);
	FUNC0(efd, M_EPOLL);

	return (0);
}