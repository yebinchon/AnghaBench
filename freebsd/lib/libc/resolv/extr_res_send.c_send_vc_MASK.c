#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct iovec {int dummy; } ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  on ;
struct TYPE_9__ {int tc; scalar_t__ id; } ;
struct TYPE_8__ {scalar_t__ _vcsock; int _flags; int options; int pfcode; } ;
typedef  int ISC_SOCKLEN_T ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
#define  EAFNOSUPPORT 130 
 int ECONNRESET ; 
 int EMSGSIZE ; 
 int ENOTSOCK ; 
#define  EPFNOSUPPORT 129 
#define  EPROTONOSUPPORT 128 
 int HFIXEDSZ ; 
 scalar_t__ INT16SZ ; 
 int PACKETSZ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int RES_DEBUG ; 
 int RES_F_VC ; 
 int RES_PRF_REPLY ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NOSIGPIPE ; 
 scalar_t__ FUNC5 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC6 (scalar_t__,struct sockaddr*,int*) ; 
 int FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,struct iovec*,int) ; 
 int errno ; 
 struct iovec FUNC11 (void*,int) ; 
 struct sockaddr* FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (struct sockaddr*) ; 
 scalar_t__ highestFD ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC18(res_state statp,
	const u_char *buf, int buflen, u_char *ans, int anssiz,
	int *terrno, int ns)
{
	const HEADER *hp = (const HEADER *) buf;
	HEADER *anhp = (HEADER *) ans;
	struct sockaddr *nsap;
	int nsaplen;
	int truncating, connreset, resplen, n;
	struct iovec iov[2];
	u_short len;
	u_char *cp;
	void *tmp;
#ifdef SO_NOSIGPIPE
	int on = 1;
#endif

	nsap = FUNC12(statp, ns);
	nsaplen = FUNC13(nsap);

	connreset = 0;
 same_ns:
	truncating = 0;

	/* Are we still talking to whom we want to talk to? */
	if (statp->_vcsock >= 0 && (statp->_flags & RES_F_VC) != 0) {
		struct sockaddr_storage peer;
		ISC_SOCKLEN_T size = sizeof peer;

		if (FUNC6(statp->_vcsock,
				(struct sockaddr *)&peer, &size) < 0 ||
		    !FUNC17((struct sockaddr *)&peer, nsap)) {
			FUNC16(statp);
			statp->_flags &= ~RES_F_VC;
		}
	}

	if (statp->_vcsock < 0 || (statp->_flags & RES_F_VC) == 0) {
		if (statp->_vcsock >= 0)
			FUNC16(statp);

		statp->_vcsock = FUNC9(nsap->sa_family, SOCK_STREAM |
		    SOCK_CLOEXEC, 0);
#if !defined(USE_POLL) && !defined(USE_KQUEUE)
		if (statp->_vcsock > highestFD) {
			FUNC16(statp);
			errno = ENOTSOCK;
		}
#endif
		if (statp->_vcsock < 0) {
			switch (errno) {
			case EPROTONOSUPPORT:
#ifdef EPFNOSUPPORT
			case EPFNOSUPPORT:
#endif
			case EAFNOSUPPORT:
				FUNC4(statp, stderr, "socket(vc)", errno);
				return (0);
			default:
				*terrno = errno;
				FUNC4(statp, stderr, "socket(vc)", errno);
				return (-1);
			}
		}
#ifdef SO_NOSIGPIPE
		/*
		 * Disable generation of SIGPIPE when writing to a closed
		 * socket.  Write should return -1 and set errno to EPIPE
		 * instead.
		 *
		 * Push on even if setsockopt(SO_NOSIGPIPE) fails.
		 */
		(void)_setsockopt(statp->_vcsock, SOL_SOCKET, SO_NOSIGPIPE, &on,
				 sizeof(on));
#endif
		errno = 0;
		if (FUNC5(statp->_vcsock, nsap, nsaplen) < 0) {
			*terrno = errno;
			FUNC0(statp, stderr, "connect/vc", errno, nsap,
			    nsaplen);
			FUNC16(statp);
			return (0);
		}
		statp->_flags |= RES_F_VC;
	}

	/*
	 * Send length & message
	 */
	FUNC15((u_short)buflen, (u_char*)&len);
	iov[0] = FUNC11(&len, INT16SZ);
	FUNC1(buf, tmp);
	iov[1] = FUNC11(tmp, buflen);
	if (FUNC10(statp->_vcsock, iov, 2) != (INT16SZ + buflen)) {
		*terrno = errno;
		FUNC4(statp, stderr, "write failed", errno);
		FUNC16(statp);
		return (0);
	}
	/*
	 * Receive length & response
	 */
 read_len:
	cp = ans;
	len = INT16SZ;
	while ((n = FUNC7(statp->_vcsock, (char *)cp, (int)len)) > 0) {
		cp += n;
		if ((len -= n) == 0)
			break;
	}
	if (n <= 0) {
		*terrno = errno;
		FUNC4(statp, stderr, "read failed", errno);
		FUNC16(statp);
		/*
		 * A long running process might get its TCP
		 * connection reset if the remote server was
		 * restarted.  Requery the server instead of
		 * trying a new one.  When there is only one
		 * server, this means that a query might work
		 * instead of failing.  We only allow one reset
		 * per query to prevent looping.
		 */
		if (*terrno == ECONNRESET && !connreset) {
			connreset = 1;
			FUNC16(statp);
			goto same_ns;
		}
		FUNC16(statp);
		return (0);
	}
	resplen = FUNC14(ans);
	if (resplen > anssiz) {
		FUNC2(statp->options & RES_DEBUG,
		       (stdout, ";; response truncated\n")
		       );
		truncating = 1;
		len = anssiz;
	} else
		len = resplen;
	if (len < HFIXEDSZ) {
		/*
		 * Undersized message.
		 */
		FUNC2(statp->options & RES_DEBUG,
		       (stdout, ";; undersized: %d\n", len));
		*terrno = EMSGSIZE;
		FUNC16(statp);
		return (0);
	}
	cp = ans;
	while (len != 0 &&
	    (n = FUNC7(statp->_vcsock, (char *)cp, (int)len)) > 0) {
		cp += n;
		len -= n;
	}
	if (n <= 0) {
		*terrno = errno;
		FUNC4(statp, stderr, "read(vc)", errno);
		FUNC16(statp);
		return (0);
	}
	if (truncating) {
		/*
		 * Flush rest of answer so connection stays in synch.
		 */
		anhp->tc = 1;
		len = resplen - anssiz;
		while (len != 0) {
			char junk[PACKETSZ];

			n = FUNC7(statp->_vcsock, junk,
			    (len > sizeof junk) ? sizeof junk : len);
			if (n > 0)
				len -= n;
			else
				break;
		}
	}
	/*
	 * If the calling applicating has bailed out of
	 * a previous call and failed to arrange to have
	 * the circuit closed or the server has got
	 * itself confused, then drop the packet and
	 * wait for the correct one.
	 */
	if (hp->id != anhp->id) {
		FUNC3((statp->options & RES_DEBUG) ||
			(statp->pfcode & RES_PRF_REPLY),
			(stdout, ";; old answer (unexpected):\n"),
			ans, (resplen > anssiz) ? anssiz: resplen);
		goto read_len;
	}

	/*
	 * All is well, or the error is fatal.  Signal that the
	 * next nameserver ought not be tried.
	 */
	return (resplen);
}