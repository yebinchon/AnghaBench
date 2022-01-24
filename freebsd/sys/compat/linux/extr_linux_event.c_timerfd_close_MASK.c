#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct timerfd {int /*<<< orphan*/  tfd_lock; TYPE_2__ tfd_sel; int /*<<< orphan*/  tfd_callout; TYPE_1__ tfd_time; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int /*<<< orphan*/ * f_ops; struct timerfd* f_data; } ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXTFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_EPOLL ; 
 int /*<<< orphan*/  badfileops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timerfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct file *fp, struct thread *td)
{
	struct timerfd *tfd;

	tfd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXTFD || tfd == NULL)
		return (EINVAL);

	FUNC7(&tfd->tfd_time.it_value);
	FUNC7(&tfd->tfd_time.it_interval);

	FUNC4(&tfd->tfd_lock);
	FUNC0(&tfd->tfd_callout);
	FUNC5(&tfd->tfd_lock);

	FUNC6(&tfd->tfd_sel);
	FUNC2(&tfd->tfd_sel.si_note);

	fp->f_ops = &badfileops;
	FUNC3(&tfd->tfd_lock);
	FUNC1(tfd, M_EPOLL);

	return (0);
}