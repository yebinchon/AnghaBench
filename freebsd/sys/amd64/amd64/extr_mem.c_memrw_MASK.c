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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_long ;
typedef  scalar_t__ u_int ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; int uio_offset; int /*<<< orphan*/  uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
#define  CDEV_MINOR_KMEM 129 
#define  CDEV_MINOR_MEM 128 
 int DMAP_MIN_ADDRESS ; 
 int EFAULT ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int FUNC1 () ; 
 int FUNC2 (struct cdev*) ; 
 int dmaplimit ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (void*,scalar_t__,struct uio*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

int
FUNC10(struct cdev *dev, struct uio *uio, int flags)
{
	struct iovec *iov;
	void *p;
	ssize_t orig_resid;
	u_long v, vd;
	u_int c;
	int error;

	error = 0;
	orig_resid = uio->uio_resid;
	while (uio->uio_resid > 0 && error == 0) {
		iov = uio->uio_iov;
		if (iov->iov_len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			if (uio->uio_iovcnt < 0)
				FUNC4("memrw");
			continue;
		}
		v = uio->uio_offset;
		c = FUNC9(iov->iov_len, PAGE_SIZE - (u_int)(v & PAGE_MASK));

		switch (FUNC2(dev)) {
		case CDEV_MINOR_KMEM:
			/*
			 * Since c is clamped to be less or equal than
			 * PAGE_SIZE, the uiomove() call does not
			 * access past the end of the direct map.
			 */
			if (v >= DMAP_MIN_ADDRESS &&
			    v < DMAP_MIN_ADDRESS + dmaplimit) {
				error = FUNC8((void *)v, c, uio);
				break;
			}

			if (!FUNC3((void *)v, c, uio->uio_rw == UIO_READ ?
			    VM_PROT_READ : VM_PROT_WRITE)) {
				error = EFAULT;
				break;
			}

			/*
			 * If the extracted address is not accessible
			 * through the direct map, then we make a
			 * private (uncached) mapping because we can't
			 * depend on the existing kernel mapping
			 * remaining valid until the completion of
			 * uiomove().
			 *
			 * XXX We cannot provide access to the
			 * physical page 0 mapped into KVA.
			 */
			v = FUNC5(kernel_pmap, v);
			if (v == 0) {
				error = EFAULT;
				break;
			}
			/* FALLTHROUGH */
		case CDEV_MINOR_MEM:
			if (v < dmaplimit) {
				vd = FUNC0(v);
				error = FUNC8((void *)vd, c, uio);
				break;
			}
			if (v > FUNC1()) {
				error = EFAULT;
				break;
			}
			p = FUNC6(v, PAGE_SIZE);
			error = FUNC8(p, c, uio);
			FUNC7((vm_offset_t)p, PAGE_SIZE);
			break;
		}
	}
	/*
	 * Don't return error if any byte was written.  Read and write
	 * can return error only if no i/o was performed.
	 */
	if (uio->uio_resid != orig_resid)
		error = 0;
	return (error);
}