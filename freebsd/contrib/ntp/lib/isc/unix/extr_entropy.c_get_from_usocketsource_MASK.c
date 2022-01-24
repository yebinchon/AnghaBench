#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int ssize_t ;
typedef  int isc_uint32_t ;
struct TYPE_5__ {int handle; size_t sz_to_recv; int status; } ;
struct TYPE_6__ {TYPE_1__ usocket; } ;
struct TYPE_7__ {TYPE_2__ sources; scalar_t__ bad; int /*<<< orphan*/ * ent; } ;
typedef  TYPE_3__ isc_entropysource_t ;
typedef  int /*<<< orphan*/  isc_entropy_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ ISC_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  errno ; 
#define  isc_usocketsource_connected 132 
#define  isc_usocketsource_connecting 131 
 int isc_usocketsource_disconnected ; 
#define  isc_usocketsource_ndesired 130 
#define  isc_usocketsource_reading 129 
#define  isc_usocketsource_wrote 128 
 int /*<<< orphan*/  FUNC4 (struct timespec*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static unsigned int
FUNC9(isc_entropysource_t *source, isc_uint32_t desired) {
	isc_entropy_t *ent = source->ent;
	unsigned char buf[128];
	int fd = source->sources.usocket.handle;
	ssize_t n = 0, ndesired;
	unsigned int added;
	size_t sz_to_recv = source->sources.usocket.sz_to_recv;

	if (source->bad)
		return (0);

	desired = desired / 8 + (((desired & 0x07) > 0) ? 1 : 0);

	added = 0;
	while (desired > 0) {
		ndesired = FUNC1(desired, sizeof(buf));
 eagain_loop:

		switch ( source->sources.usocket.status ) {
		case isc_usocketsource_ndesired:
			buf[0] = ndesired;
			if ((n = FUNC7(fd, buf, 1, 0, NULL, 0)) < 0) {
				if (errno == EWOULDBLOCK || errno == EINTR ||
				    errno == ECONNRESET)
					goto out;
				goto err;
			}
			FUNC0(n == 1);
			source->sources.usocket.status =
						isc_usocketsource_wrote;
			goto eagain_loop;

		case isc_usocketsource_connecting:
		case isc_usocketsource_connected:
			buf[0] = 1;
			buf[1] = ndesired;
			if ((n = FUNC7(fd, buf, 2, 0, NULL, 0)) < 0) {
				if (errno == EWOULDBLOCK || errno == EINTR ||
				    errno == ECONNRESET)
					goto out;
				goto err;
			}
			if (n == 1) {
				source->sources.usocket.status =
					isc_usocketsource_ndesired;
				goto eagain_loop;
			}
			FUNC0(n == 2);
			source->sources.usocket.status =
						isc_usocketsource_wrote;
			/*FALLTHROUGH*/

		case isc_usocketsource_wrote:
			if (FUNC6(fd, buf, 1, 0, NULL, NULL) != 1) {
				if (errno == EAGAIN) {
					/*
					 * The problem of EAGAIN (try again
					 * later) is a major issue on HP-UX.
					 * Solaris actually tries the recvfrom
					 * call again, while HP-UX just dies.
					 * This code is an attempt to let the
					 * entropy pool fill back up (at least
					 * that's what I think the problem is.)
					 * We go to eagain_loop because if we
					 * just "break", then the "desired"
					 * amount gets borked.
					 */
#ifdef HAVE_NANOSLEEP
					struct timespec ts;

					ts.tv_sec = 0;
					ts.tv_nsec = 1000000;
					nanosleep(&ts, NULL);
#else
					FUNC8(1000);
#endif
					goto eagain_loop;
				}
				if (errno == EWOULDBLOCK || errno == EINTR)
					goto out;
				goto err;
			}
			source->sources.usocket.status =
					isc_usocketsource_reading;
			sz_to_recv = buf[0];
			source->sources.usocket.sz_to_recv = sz_to_recv;
			if (sz_to_recv > sizeof(buf))
				goto err;
			/*FALLTHROUGH*/

		case isc_usocketsource_reading:
			if (sz_to_recv != 0U) {
				n = FUNC5(fd, buf, sz_to_recv, 0);
				if (n < 0) {
					if (errno == EWOULDBLOCK ||
					    errno == EINTR)
						goto out;
					goto err;
				}
			} else
				n = 0;
			break;

		default:
			goto err;
		}

		if ((size_t)n != sz_to_recv)
			source->sources.usocket.sz_to_recv -= n;
		else
			source->sources.usocket.status =
				isc_usocketsource_connected;

		if (n == 0)
			goto out;

		FUNC3(ent, buf, n, n * 8);
		added += n * 8;
		desired -= n;
	}
	goto out;

 err:
	FUNC2(fd);
	source->bad = ISC_TRUE;
	source->sources.usocket.status = isc_usocketsource_disconnected;
	source->sources.usocket.handle = -1;

 out:
	return (added);
}