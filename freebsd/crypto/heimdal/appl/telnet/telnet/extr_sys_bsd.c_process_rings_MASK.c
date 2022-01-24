#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ didnetreceive; scalar_t__ gotDM; } ;
struct TYPE_6__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char*,int) ; 
 scalar_t__ EINTR ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EIO ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int /*<<< orphan*/  SIOCATMARK ; 
 int SYNCHing ; 
 int FUNC5 (char*,int) ; 
 TYPE_5__ clocks ; 
 int /*<<< orphan*/  didnetreceive ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int flushout ; 
 int /*<<< orphan*/  globalmode ; 
 int /*<<< orphan*/  ibits ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ net ; 
 scalar_t__ netdata ; 
 int FUNC10 () ; 
 TYPE_1__ netiring ; 
 int /*<<< orphan*/  obits ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (scalar_t__,char*,int) ; 
 int FUNC13 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 () ; 
 char termEofChar ; 
 scalar_t__ termdata ; 
 scalar_t__ tin ; 
 scalar_t__ tout ; 
 scalar_t__ FUNC20 (int) ; 
 TYPE_1__ ttyiring ; 
 int /*<<< orphan*/  xbits ; 

int
FUNC21(int netin,
	      int netout,
	      int netex,
	      int ttyin,
	      int ttyout,
	      int poll) /* If 0, then block until something to do */
{
    int c;
		/* One wants to be a bit careful about setting returnValue
		 * to one, since a one implies we did some useful work,
		 * and therefore probably won't be called to block next
		 * time (TN3270 mode only).
		 */
    int returnValue = 0;
    static struct timeval TimeValue = { 0 };

    if (net >= FD_SETSIZE
	|| tout >= FD_SETSIZE
	|| tin >= FD_SETSIZE)
	FUNC6 (1, "fd too large");

    if (netout) {
	FUNC3(net, &obits);
    }
    if (ttyout) {
	FUNC3(tout, &obits);
    }
    if (ttyin) {
	FUNC3(tin, &ibits);
    }
    if (netin) {
	FUNC3(net, &ibits);
    }
#if !defined(SO_OOBINLINE)
    if (netex) {
	FUNC3(net, &xbits);
    }
#endif
    if ((c = FUNC16(FD_SETSIZE, &ibits, &obits, &xbits,
			(poll == 0)? (struct timeval *)0 : &TimeValue)) < 0) {
	if (c == -1) {
		    /*
		     * we can get EINTR if we are in line mode,
		     * and the user does an escape (TSTP), or
		     * some other signal generator.
		     */
	    if (errno == EINTR) {
		return 0;
	    }
		    /* I don't like this, does it ever happen? */
	    FUNC11("sleep(5) from telnet, after select\r\n");
	    FUNC18(5);
	}
	return 0;
    }

    /*
     * Any urgent data?
     */
    if (FUNC2(net, &xbits)) {
	FUNC1(net, &xbits);
	SYNCHing = 1;
	FUNC20(1);	/* flush already enqueued data */
    }

    /*
     * Something to read from the network...
     */
    if (FUNC2(net, &ibits)) {
	int canread;

	FUNC1(net, &ibits);
	canread = FUNC14(&netiring);
#if	!defined(SO_OOBINLINE)
	    /*
	     * In 4.2 (and some early 4.3) systems, the
	     * OOB indication and data handling in the kernel
	     * is such that if two separate TCP Urgent requests
	     * come in, one byte of TCP data will be overlaid.
	     * This is fatal for Telnet, but we try to live
	     * with it.
	     *
	     * In addition, in 4.2 (and...), a special protocol
	     * is needed to pick up the TCP Urgent data in
	     * the correct sequence.
	     *
	     * What we do is:  if we think we are in urgent
	     * mode, we look to see if we are "at the mark".
	     * If we are, we do an OOB receive.  If we run
	     * this twice, we will do the OOB receive twice,
	     * but the second will fail, since the second
	     * time we were "at the mark", but there wasn't
	     * any data there (the kernel doesn't reset
	     * "at the mark" until we do a normal read).
	     * Once we've read the OOB data, we go ahead
	     * and do normal reads.
	     *
	     * There is also another problem, which is that
	     * since the OOB byte we read doesn't put us
	     * out of OOB state, and since that byte is most
	     * likely the TELNET DM (data mark), we would
	     * stay in the TELNET SYNCH (SYNCHing) state.
	     * So, clocks to the rescue.  If we've "just"
	     * received a DM, then we test for the
	     * presence of OOB data when the receive OOB
	     * fails (and AFTER we did the normal mode read
	     * to clear "at the mark").
	     */
	if (SYNCHing) {
	    int atmark;
	    static int bogus_oob = 0, first = 1;

	    FUNC7(net, SIOCATMARK, (char *)&atmark);
	    if (atmark) {
		c = FUNC13(net, netiring.supply, canread, MSG_OOB);
		if ((c == -1) && (errno == EINVAL)) {
		    c = FUNC13(net, netiring.supply, canread, 0);
		    if (clocks.didnetreceive < clocks.gotDM) {
			SYNCHing = FUNC19();
		    }
		} else if (first && c > 0) {
		    /*
		     * Bogosity check.  Systems based on 4.2BSD
		     * do not return an error if you do a second
		     * recv(MSG_OOB).  So, we do one.  If it
		     * succeeds and returns exactly the same
		     * data, then assume that we are running
		     * on a broken system and set the bogus_oob
		     * flag.  (If the data was different, then
		     * we probably got some valid new data, so
		     * increment the count...)
		     */
		    int i;
		    i = FUNC13(net, netiring.supply + c, canread - c, MSG_OOB);
		    if (i == c &&
			 FUNC9(netiring.supply, netiring.supply + c, i) == 0) {
			bogus_oob = 1;
			first = 0;
		    } else if (i < 0) {
			bogus_oob = 0;
			first = 0;
		    } else
			c += i;
		}
		if (bogus_oob && c > 0) {
		    int i;
		    /*
		     * Bogosity.  We have to do the read
		     * to clear the atmark to get out of
		     * an infinate loop.
		     */
		    i = FUNC12(net, netiring.supply + c, canread - c);
		    if (i > 0)
			c += i;
		}
	    } else {
		c = FUNC13(net, netiring.supply, canread, 0);
	    }
	} else {
	    c = FUNC13(net, netiring.supply, canread, 0);
	}
	FUNC17(didnetreceive);
#else	/* !defined(SO_OOBINLINE) */
	c = recv(net, (char *)netiring.supply, canread, 0);
#endif	/* !defined(SO_OOBINLINE) */
	if (c < 0 && errno == EWOULDBLOCK) {
	    c = 0;
	} else if (c <= 0) {
	    return -1;
	}
	if (netdata) {
	    FUNC0('<', netiring.supply, c);
	}
	if (c)
	    FUNC15(&netiring, c);
	returnValue = 1;
    }

    /*
     * Something to read from the tty...
     */
    if (FUNC2(tin, &ibits)) {
	FUNC1(tin, &ibits);
	c = FUNC5(ttyiring.supply, FUNC14(&ttyiring));
	if (c < 0 && errno == EIO)
	    c = 0;
	if (c < 0 && errno == EWOULDBLOCK) {
	    c = 0;
	} else {
	    /* EOF detection for line mode!!!! */
	    if ((c == 0) && FUNC4(globalmode) && FUNC8(tin)) {
			/* must be an EOF... */
		*ttyiring.supply = termEofChar;
		c = 1;
	    }
	    if (c <= 0) {
		return -1;
	    }
	    if (termdata) {
		FUNC0('<', ttyiring.supply, c);
	    }
	    FUNC15(&ttyiring, c);
	}
	returnValue = 1;		/* did something useful */
    }

    if (FUNC2(net, &obits)) {
	FUNC1(net, &obits);
	returnValue |= FUNC10();
    }
    if (FUNC2(tout, &obits)) {
	FUNC1(tout, &obits);
	returnValue |= (FUNC20(SYNCHing|flushout) > 0);
    }

    return returnValue;
}