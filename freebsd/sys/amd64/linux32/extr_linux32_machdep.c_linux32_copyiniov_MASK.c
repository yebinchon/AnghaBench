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
struct l_iovec32 {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int l_ulong ;

/* Variables and functions */
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UIO_MAXIOV ; 
 int FUNC1 (struct l_iovec32*,struct l_iovec32*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iovec*,int /*<<< orphan*/ ) ; 
 struct iovec* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct l_iovec32 *iovp32, l_ulong iovcnt, struct iovec **iovp,
    int error)
{
	struct l_iovec32 iov32;
	struct iovec *iov;
	uint32_t iovlen;
	int i;

	*iovp = NULL;
	if (iovcnt > UIO_MAXIOV)
		return (error);
	iovlen = iovcnt * sizeof(struct iovec);
	iov = FUNC3(iovlen, M_IOV, M_WAITOK);
	for (i = 0; i < iovcnt; i++) {
		error = FUNC1(&iovp32[i], &iov32, sizeof(struct l_iovec32));
		if (error) {
			FUNC2(iov, M_IOV);
			return (error);
		}
		iov[i].iov_base = FUNC0(iov32.iov_base);
		iov[i].iov_len = iov32.iov_len;
	}
	*iovp = iov;
	return(0);

}