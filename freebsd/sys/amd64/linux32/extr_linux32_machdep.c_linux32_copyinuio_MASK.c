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
typedef  int uint32_t ;
struct uio {int uio_iovcnt; int uio_offset; scalar_t__ uio_resid; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct l_iovec32 {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int l_ulong ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UIO_MAXIOV ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC1 (struct l_iovec32*,struct l_iovec32*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uio*,int /*<<< orphan*/ ) ; 
 struct uio* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct l_iovec32 *iovp, l_ulong iovcnt, struct uio **uiop)
{
	struct l_iovec32 iov32;
	struct iovec *iov;
	struct uio *uio;
	uint32_t iovlen;
	int error, i;

	*uiop = NULL;
	if (iovcnt > UIO_MAXIOV)
		return (EINVAL);
	iovlen = iovcnt * sizeof(struct iovec);
	uio = FUNC3(iovlen + sizeof(*uio), M_IOV, M_WAITOK);
	iov = (struct iovec *)(uio + 1);
	for (i = 0; i < iovcnt; i++) {
		error = FUNC1(&iovp[i], &iov32, sizeof(struct l_iovec32));
		if (error) {
			FUNC2(uio, M_IOV);
			return (error);
		}
		iov[i].iov_base = FUNC0(iov32.iov_base);
		iov[i].iov_len = iov32.iov_len;
	}
	uio->uio_iov = iov;
	uio->uio_iovcnt = iovcnt;
	uio->uio_segflg = UIO_USERSPACE;
	uio->uio_offset = -1;
	uio->uio_resid = 0;
	for (i = 0; i < iovcnt; i++) {
		if (iov->iov_len > INT_MAX - uio->uio_resid) {
			FUNC2(uio, M_IOV);
			return (EINVAL);
		}
		uio->uio_resid += iov->iov_len;
		iov++;
	}
	*uiop = uio;
	return (0);
}