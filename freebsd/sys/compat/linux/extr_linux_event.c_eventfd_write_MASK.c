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
struct eventfd {scalar_t__ efd_count; int /*<<< orphan*/  efd_lock; TYPE_1__ efd_sel; } ;
typedef  scalar_t__ eventfd_t ;

/* Variables and functions */
 scalar_t__ DTYPE_LINUXEFD ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FNONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCATCH ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (scalar_t__*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

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

	error = FUNC5(&count, sizeof(eventfd_t), uio);
	if (error != 0)
		return (error);
	if (count == UINT64_MAX)
		return (EINVAL);

	FUNC1(&efd->efd_lock);
retry:
	if (UINT64_MAX - efd->efd_count <= count) {
		if ((fp->f_flag & FNONBLOCK) != 0) {
			FUNC3(&efd->efd_lock);
			/* Do not not return the number of bytes written */
			uio->uio_resid += sizeof(eventfd_t);
			return (EAGAIN);
		}
		error = FUNC2(&efd->efd_count, &efd->efd_lock,
		    PCATCH, "lefdwr", 0);
		if (error == 0)
			goto retry;
	}
	if (error == 0) {
		efd->efd_count += count;
		FUNC0(&efd->efd_sel.si_note, 0);
		FUNC4(&efd->efd_sel);
		FUNC6(&efd->efd_count);
	}
	FUNC3(&efd->efd_lock);

	return (error);
}