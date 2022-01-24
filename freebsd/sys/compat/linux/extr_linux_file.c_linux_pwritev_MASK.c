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
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct linux_pwritev_args {int pos_l; int /*<<< orphan*/  fd; int /*<<< orphan*/  vlen; int /*<<< orphan*/  vec; scalar_t__ pos_h; } ;
typedef  int /*<<< orphan*/  offset ;
typedef  int off_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio**) ; 
 int /*<<< orphan*/  FUNC2 (struct uio*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct uio*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio**) ; 

int
FUNC5(struct thread *td, struct linux_pwritev_args *uap)
{
	struct uio *auio;
	int error;
	off_t offset;

	/*
	 * According http://man7.org/linux/man-pages/man2/pwritev.2.html#NOTES
	 * pos_l and pos_h, respectively, contain the
	 * low order and high order 32 bits of offset.
	 */
	offset = (((off_t)uap->pos_h << (sizeof(offset) * 4)) <<
	    (sizeof(offset) * 4)) | uap->pos_l;
	if (offset < 0)
		return (EINVAL);
#ifdef COMPAT_LINUX32
	error = linux32_copyinuio(PTRIN(uap->vec), uap->vlen, &auio);
#else
	error = FUNC1(uap->vec, uap->vlen, &auio);
#endif
	if (error != 0)
		return (error);
	error = FUNC3(td, uap->fd, auio, offset);
	FUNC2(auio, M_IOV);
	return (error);
}