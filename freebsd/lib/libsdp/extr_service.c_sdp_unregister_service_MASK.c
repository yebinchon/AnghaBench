#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct iovec {int iov_len; void* iov_base; } ;
typedef  TYPE_1__* sdp_session_p ;
struct TYPE_5__ {void* len; void* tid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ sdp_pdu_t ;
typedef  int /*<<< orphan*/  pdu ;
typedef  int /*<<< orphan*/  iov ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  handle ;
struct TYPE_4__ {int flags; int tid; scalar_t__ error; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EMSGSIZE ; 
 int SDP_LOCAL_MTU ; 
 int /*<<< orphan*/  SDP_PDU_SERVICE_UNREGISTER_REQUEST ; 
 int SDP_SESSION_LOCAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iovec*,int) ; 

int32_t
FUNC4(void *xss, uint32_t handle)
{
	sdp_session_p	ss = (sdp_session_p) xss;
	struct iovec	iov[2];
	sdp_pdu_t	pdu;
	int32_t		len;

	if (ss == NULL)
		return (-1);
	if (!(ss->flags & SDP_SESSION_LOCAL)) {
		ss->error = EINVAL;
		return (-1);
	}
	if (sizeof(pdu) + sizeof(handle) > SDP_LOCAL_MTU) {
		ss->error = EMSGSIZE;
		return (-1);
	}

	pdu.pid = SDP_PDU_SERVICE_UNREGISTER_REQUEST;
	pdu.tid = FUNC1(++ss->tid);
	pdu.len = FUNC1(sizeof(handle));

	handle = FUNC0(handle);

	iov[0].iov_base = (void *) &pdu;
	iov[0].iov_len = sizeof(pdu);

	iov[1].iov_base = (void *) &handle;
	iov[1].iov_len = sizeof(handle);

	do {
		len = FUNC3(ss->s, iov, sizeof(iov)/sizeof(iov[0]));
	} while (len < 0 && errno == EINTR);

	if (len < 0) {
		ss->error = errno;
		return (-1);
	}

	return ((FUNC2(ss) < 0)? -1 : 0);
}