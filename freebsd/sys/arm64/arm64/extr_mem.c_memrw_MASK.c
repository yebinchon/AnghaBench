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
typedef  struct vm_page* vm_page_t ;
typedef  int vm_offset_t ;
typedef  scalar_t__ u_int ;
struct vm_page {int /*<<< orphan*/  phys_addr; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; int uio_offset; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
#define  CDEV_MINOR_KMEM 129 
#define  CDEV_MINOR_MEM 128 
 int EFAULT ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (void*,scalar_t__,struct uio*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_page**,int,scalar_t__,struct uio*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

int
FUNC11(struct cdev *dev, struct uio *uio, int flags)
{
	struct iovec *iov;
	struct vm_page m;
	vm_page_t marr;
	vm_offset_t off, v;
	u_int cnt;
	int error;

	error = 0;

	while (uio->uio_resid > 0 && error == 0) {
		iov = uio->uio_iov;
		if (iov->iov_len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			if (uio->uio_iovcnt < 0)
				FUNC5("memrw");
			continue;
		}

		v = uio->uio_offset;
		off = v & PAGE_MASK;
		cnt = FUNC10(iov->iov_len, PAGE_SIZE - (u_int)off);
		if (cnt == 0)
			continue;

		switch(FUNC3(dev)) {
		case CDEV_MINOR_KMEM:
			/* If the address is in the DMAP just copy it */
			if (FUNC2(v)) {
				error = FUNC8((void *)v, cnt, uio);
				break;
			}

			if (!FUNC4((void *)v, cnt, uio->uio_rw == UIO_READ ?
			    VM_PROT_READ : VM_PROT_WRITE)) {
				error = EFAULT;
				break;
			}

			/* Get the physical address to read */
			v = FUNC6(kernel_pmap, v);
			if (v == 0) {
				error = EFAULT;
				break;
			}

			/* FALLTHROUGH */
		case CDEV_MINOR_MEM:
			/* If within the DMAP use this to copy from */
			if (FUNC0(v)) {
				v = FUNC1(v);
				error = FUNC8((void *)v, cnt, uio);
				break;
			}

			/* Have uiomove_fromphys handle the data */
			m.phys_addr = FUNC7(v);
			marr = &m;
			FUNC9(&marr, off, cnt, uio);
			break;
		}
	}

	return (error);
}