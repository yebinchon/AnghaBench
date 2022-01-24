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
struct uio {int uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int f_flag; struct eventfd* f_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct eventfd {int efd_count; int efd_flags; int /*<<< orphan*/  efd_lock; TYPE_1__ efd_sel; } ;
typedef  int eventfd_t ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXEFD ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FNONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LINUX_EFD_SEMAPHORE ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static int
FUNC7(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
	struct eventfd *efd;
	eventfd_t count;
	int error;

	efd = fp->f_data;
	if (fp->f_type != DTYPE_LINUXEFD || efd == NULL)
		return (EINVAL);

	if (uio->uio_resid < sizeof(eventfd_t))
		return (EINVAL);

	error = 0;
	FUNC1(&efd->efd_lock);
retry:
	if (efd->efd_count == 0) {
		if ((fp->f_flag & FNONBLOCK) != 0) {
			FUNC3(&efd->efd_lock);
			return (EAGAIN);
		}
		error = FUNC2(&efd->efd_count, &efd->efd_lock, PCATCH, "lefdrd", 0);
		if (error == 0)
			goto retry;
	}
	if (error == 0) {
		if ((efd->efd_flags & LINUX_EFD_SEMAPHORE) != 0) {
			count = 1;
			--efd->efd_count;
		} else {
			count = efd->efd_count;
			efd->efd_count = 0;
		}
		FUNC0(&efd->efd_sel.si_note, 0);
		FUNC4(&efd->efd_sel);
		FUNC6(&efd->efd_count);
		FUNC3(&efd->efd_lock);
		error = FUNC5(&count, sizeof(eventfd_t), uio);
	} else
		FUNC3(&efd->efd_lock);

	return (error);
}