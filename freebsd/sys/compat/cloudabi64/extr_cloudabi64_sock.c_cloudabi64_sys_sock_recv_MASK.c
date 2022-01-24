#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct iovec {int /*<<< orphan*/  iov_len; void* iov_base; } ;
struct cloudabi64_sys_sock_recv_args {int /*<<< orphan*/  out; int /*<<< orphan*/  sock; TYPE_2__ const* in; } ;
typedef  int /*<<< orphan*/  ro ;
typedef  int /*<<< orphan*/  ri ;
typedef  int /*<<< orphan*/  iovobj ;
struct TYPE_7__ {size_t ro_datalen; size_t ro_fdslen; int /*<<< orphan*/  ro_flags; } ;
typedef  TYPE_1__ cloudabi64_recv_out_t ;
struct TYPE_8__ {size_t ri_data_len; int /*<<< orphan*/  ri_flags; int /*<<< orphan*/  ri_fds_len; int /*<<< orphan*/  ri_fds; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  buf; int /*<<< orphan*/  ri_data; } ;
typedef  TYPE_2__ cloudabi64_recv_in_t ;
typedef  TYPE_2__ cloudabi64_iovec_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_SOCKET ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UIO_MAXIOV ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct iovec*,size_t,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__ const*,TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*,int /*<<< orphan*/ ) ; 
 struct iovec* FUNC5 (size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td,
    struct cloudabi64_sys_sock_recv_args *uap)
{
	cloudabi64_recv_in_t ri;
	cloudabi64_recv_out_t ro = {};
	cloudabi64_iovec_t iovobj;
	struct iovec *iov;
	const cloudabi64_iovec_t *user_iov;
	size_t i, rdatalen, rfdslen;
	int error;

	error = FUNC2(uap->in, &ri, sizeof(ri));
	if (error != 0)
		return (error);

	/* Convert iovecs to native format. */
	if (ri.ri_data_len > UIO_MAXIOV)
		return (EINVAL);
	iov = FUNC5(ri.ri_data_len, sizeof(struct iovec),
	    M_SOCKET, M_WAITOK);
	user_iov = FUNC0(ri.ri_data);
	for (i = 0; i < ri.ri_data_len; i++) {
		error = FUNC2(&user_iov[i], &iovobj, sizeof(iovobj));
		if (error != 0) {
			FUNC4(iov, M_SOCKET);
			return (error);
		}
		iov[i].iov_base = FUNC0(iovobj.buf);
		iov[i].iov_len = iovobj.buf_len;
	}

	error = FUNC1(td, uap->sock, iov, ri.ri_data_len,
	    FUNC0(ri.ri_fds), ri.ri_fds_len, ri.ri_flags, &rdatalen,
	    &rfdslen, &ro.ro_flags);
	FUNC4(iov, M_SOCKET);
	if (error != 0)
		return (error);

	ro.ro_datalen = rdatalen;
	ro.ro_fdslen = rfdslen;
	return (FUNC3(&ro, uap->out, sizeof(ro)));
}