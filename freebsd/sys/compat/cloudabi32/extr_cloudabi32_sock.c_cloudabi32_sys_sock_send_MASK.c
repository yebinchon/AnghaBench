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
struct cloudabi32_sys_sock_send_args {int /*<<< orphan*/  out; int /*<<< orphan*/  sock; TYPE_2__ const* in; } ;
typedef  int /*<<< orphan*/  so ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  iovobj ;
struct TYPE_7__ {size_t so_datalen; } ;
typedef  TYPE_1__ cloudabi32_send_out_t ;
struct TYPE_8__ {size_t si_data_len; int /*<<< orphan*/  si_fds_len; int /*<<< orphan*/  si_fds; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  buf; int /*<<< orphan*/  si_data; } ;
typedef  TYPE_2__ cloudabi32_send_in_t ;
typedef  TYPE_2__ cloudabi32_ciovec_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_SOCKET ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UIO_MAXIOV ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct iovec*,size_t,void*,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC2 (TYPE_2__ const*,TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*,int /*<<< orphan*/ ) ; 
 struct iovec* FUNC5 (size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td,
    struct cloudabi32_sys_sock_send_args *uap)
{
	cloudabi32_send_in_t si;
	cloudabi32_send_out_t so = {};
	cloudabi32_ciovec_t iovobj;
	struct iovec *iov;
	const cloudabi32_ciovec_t *user_iov;
	size_t datalen, i;
	int error;

	error = FUNC2(uap->in, &si, sizeof(si));
	if (error != 0)
		return (error);

	/* Convert iovecs to native format. */
	if (si.si_data_len > UIO_MAXIOV)
		return (EINVAL);
	iov = FUNC5(si.si_data_len, sizeof(struct iovec),
	    M_SOCKET, M_WAITOK);
	user_iov = FUNC0(si.si_data);
	for (i = 0; i < si.si_data_len; i++) {
		error = FUNC2(&user_iov[i], &iovobj, sizeof(iovobj));
		if (error != 0) {
			FUNC4(iov, M_SOCKET);
			return (error);
		}
		iov[i].iov_base = FUNC0(iovobj.buf);
		iov[i].iov_len = iovobj.buf_len;
	}

	error = FUNC1(td, uap->sock, iov, si.si_data_len,
	    FUNC0(si.si_fds), si.si_fds_len, &datalen);
	FUNC4(iov, M_SOCKET);
	if (error != 0)
		return (error);

	so.so_datalen = datalen;
	return (FUNC3(&so, uap->out, sizeof(so)));
}