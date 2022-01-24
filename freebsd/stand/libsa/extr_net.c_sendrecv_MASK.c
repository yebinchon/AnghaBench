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
typedef  scalar_t__ time_t ;
struct iodesc {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ MAXTMO ; 
 scalar_t__ MAXWAIT ; 
 scalar_t__ MINTMO ; 
 scalar_t__ debug ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct iodesc*,void*,size_t) ; 
 int FUNC4 (struct iodesc*,void**,void**,...) ; 

ssize_t
FUNC5(struct iodesc *d,
    ssize_t (*sproc)(struct iodesc *, void *, size_t),
    void *sbuf, size_t ssize,
    ssize_t (*rproc)(struct iodesc *, void **, void **, time_t, void *),
    void **pkt, void **payload, void *recv_extra)
{
	ssize_t cc;
	time_t t, tmo, tlast;
	time_t tref;
	long tleft;

#ifdef NET_DEBUG
	if (debug)
		printf("sendrecv: called\n");
#endif

	tmo = MINTMO;
	tlast = 0;
	tleft = 0;
	tref = FUNC0();
	t = FUNC0();
	for (;;) {
		if (MAXWAIT > 0 && (FUNC0() - tref) >= MAXWAIT) {
			errno = ETIMEDOUT;
			return -1;
		}
		if (tleft <= 0) {
			if (tmo >= MAXTMO) {
				errno = ETIMEDOUT;
				return -1;
			}
			cc = (*sproc)(d, sbuf, ssize);
			if (cc != -1 && cc < ssize)
				FUNC1("sendrecv: short write! (%zd < %zd)",
				    cc, ssize);

			tleft = tmo;
			tmo += MINTMO;
			if (tmo > MAXTMO)
				tmo = MAXTMO;

			if (cc == -1) {
				/* Error on transmit; wait before retrying */
				while ((FUNC0() - t) < tmo)
					;
				tleft = 0;
				continue;
			}

			tlast = t;
		}

		/* Try to get a packet and process it. */
		cc = (*rproc)(d, pkt, payload, tleft, recv_extra);
		/* Return on data, EOF or real error. */
		if (cc != -1 || (errno != 0 && errno != ETIMEDOUT))
			return (cc);

		/* Timed out or didn't get the packet we're waiting for */
		t = FUNC0();
		tleft -= t - tlast;
		tlast = t;
	}
}