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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; scalar_t__ uio_offset; scalar_t__ uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ CDEV_MINOR_KMEM ; 
 scalar_t__ CDEV_MINOR_MEM ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ UIO_READ ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/ * _tmppt ; 
 scalar_t__ FUNC0 (struct cdev*) ; 
 scalar_t__* dump_avail ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmppt_lock ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,struct uio*) ; 

int
FUNC13(struct cdev *dev, struct uio *uio, int flags)
{
	int o;
	u_int c = 0, v;
	struct iovec *iov;
	int error = 0;
	vm_offset_t addr, eaddr;

	while (uio->uio_resid > 0 && error == 0) {
		iov = uio->uio_iov;
		if (iov->iov_len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			if (uio->uio_iovcnt < 0)
				FUNC3("memrw");
			continue;
		}
		if (FUNC0(dev) == CDEV_MINOR_MEM) {
			int i;
			int address_valid = 0;

			v = uio->uio_offset;
			v &= ~PAGE_MASK;
			for (i = 0; dump_avail[i] || dump_avail[i + 1];
			i += 2) {
				if (v >= dump_avail[i] &&
				    v < dump_avail[i + 1]) {
					address_valid = 1;
					break;
				}
			}
			if (!address_valid)
				return (EINVAL);
			FUNC9(&tmppt_lock);
			FUNC5((vm_offset_t)_tmppt, v);
#if __ARM_ARCH >= 6
			pmap_tlb_flush(kernel_pmap, (vm_offset_t)_tmppt);
#endif
			o = (int)uio->uio_offset & PAGE_MASK;
			c = (u_int)(PAGE_SIZE - ((int)iov->iov_base & PAGE_MASK));
			c = FUNC2(c, (u_int)(PAGE_SIZE - o));
			c = FUNC2(c, (u_int)iov->iov_len);
			error = FUNC12((caddr_t)&_tmppt[o], (int)c, uio);
			FUNC6((vm_offset_t)_tmppt, 1);
			FUNC10(&tmppt_lock);
			continue;
		}
		else if (FUNC0(dev) == CDEV_MINOR_KMEM) {
			c = iov->iov_len;

			/*
			 * Make sure that all of the pages are currently
			 * resident so that we don't create any zero-fill
			 * pages.
			 */
			addr = FUNC11(uio->uio_offset);
			eaddr = FUNC8(uio->uio_offset + c);

			for (; addr < eaddr; addr += PAGE_SIZE)
				if (FUNC4(kernel_pmap, addr) == 0)
					return (EFAULT);
			if (!FUNC1((caddr_t)(int)uio->uio_offset, c,
			    uio->uio_rw == UIO_READ ?
			    VM_PROT_READ : VM_PROT_WRITE))
					return (EFAULT);
			error = FUNC12((caddr_t)(int)uio->uio_offset, (int)c, uio);
			continue;
		}
		/* else panic! */
	}
	return (error);
}