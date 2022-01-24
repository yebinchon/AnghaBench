#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct serviced_query {scalar_t__ status; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  last_rtt; int /*<<< orphan*/  qtype; int /*<<< orphan*/  zonelen; int /*<<< orphan*/  zone; TYPE_1__* outnet; TYPE_3__ last_sent_time; scalar_t__ ssl_upstream; scalar_t__ tcp_upstream; int /*<<< orphan*/  want_dnssec; int /*<<< orphan*/  qbuflen; int /*<<< orphan*/  qbuf; int /*<<< orphan*/ * pending; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; struct comm_point* c; } ;
struct comm_point {int /*<<< orphan*/  buffer; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {scalar_t__ log_forwarder_response_messages; scalar_t__ log_resolver_response_messages; } ;
struct TYPE_4__ {int /*<<< orphan*/  infra; struct timeval* now_tv; int /*<<< orphan*/ * now_secs; TYPE_2__* dtenv; } ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_FORMERR ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NOTIMPL ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_YXDOMAIN ; 
 int NETEVENT_NOERROR ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct serviced_query*,int,struct comm_point*,struct comm_reply*) ; 
 scalar_t__ serviced_query_TCP ; 
 scalar_t__ serviced_query_TCP_EDNS ; 
 scalar_t__ serviced_query_TCP_EDNS_fallback ; 
 int /*<<< orphan*/  FUNC10 (struct serviced_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

int 
FUNC13(struct comm_point* c, void* arg, int error,
        struct comm_reply* rep)
{
	struct serviced_query* sq = (struct serviced_query*)arg;
	struct comm_reply r2;
	sq->pending = NULL; /* removed after this callback */
	if(error != NETEVENT_NOERROR)
		FUNC5(VERB_QUERY, "tcp error for address", 
			&sq->addr, sq->addrlen);
	if(error==NETEVENT_NOERROR)
		FUNC4(sq->outnet->infra, &sq->addr,
			sq->addrlen, sq->zone, sq->zonelen);
#ifdef USE_DNSTAP
	if(error==NETEVENT_NOERROR && sq->outnet->dtenv &&
	   (sq->outnet->dtenv->log_resolver_response_messages ||
	    sq->outnet->dtenv->log_forwarder_response_messages))
		dt_msg_send_outside_response(sq->outnet->dtenv, &sq->addr,
		c->type, sq->zone, sq->zonelen, sq->qbuf, sq->qbuflen,
		&sq->last_sent_time, sq->outnet->now_tv, c->buffer);
#endif
	if(error==NETEVENT_NOERROR && sq->status == serviced_query_TCP_EDNS &&
		(FUNC0(FUNC11(c->buffer)) == 
		LDNS_RCODE_FORMERR || FUNC0(FUNC11(
		c->buffer)) == LDNS_RCODE_NOTIMPL) ) {
		/* attempt to fallback to nonEDNS */
		sq->status = serviced_query_TCP_EDNS_fallback;
		FUNC10(sq, c->buffer);
		return 0;
	} else if(error==NETEVENT_NOERROR && 
		sq->status == serviced_query_TCP_EDNS_fallback &&
			(FUNC0(FUNC11(c->buffer)) == 
			LDNS_RCODE_NOERROR || FUNC0(
			FUNC11(c->buffer)) == LDNS_RCODE_NXDOMAIN 
			|| FUNC0(FUNC11(c->buffer)) 
			== LDNS_RCODE_YXDOMAIN)) {
		/* the fallback produced a result that looks promising, note
		 * that this server should be approached without EDNS */
		/* only store noEDNS in cache if domain is noDNSSEC */
		if(!sq->want_dnssec)
		  if(!FUNC2(sq->outnet->infra, &sq->addr, 
			sq->addrlen, sq->zone, sq->zonelen, -1,
			*sq->outnet->now_secs))
			FUNC7("Out of memory caching no edns for host");
		sq->status = serviced_query_TCP;
	}
	if(sq->tcp_upstream || sq->ssl_upstream) {
	    struct timeval now = *sq->outnet->now_tv;
	    if(error!=NETEVENT_NOERROR) {
	        if(!FUNC3(sq->outnet->infra, &sq->addr,
		    sq->addrlen, sq->zone, sq->zonelen, sq->qtype,
		    -1, sq->last_rtt, (time_t)now.tv_sec))
		    FUNC7("out of memory in TCP exponential backoff.");
	    } else if(now.tv_sec > sq->last_sent_time.tv_sec ||
		(now.tv_sec == sq->last_sent_time.tv_sec &&
		now.tv_usec > sq->last_sent_time.tv_usec)) {
		/* convert from microseconds to milliseconds */
		int roundtime = ((int)(now.tv_sec - sq->last_sent_time.tv_sec))*1000
		  + ((int)now.tv_usec - (int)sq->last_sent_time.tv_usec)/1000;
		FUNC12(VERB_ALGO, "measured TCP-time at %d msec", roundtime);
		FUNC6(roundtime >= 0);
		/* only store if less then AUTH_TIMEOUT seconds, it could be
		 * huge due to system-hibernated and we woke up */
		if(roundtime < 60000) {
		    if(!FUNC3(sq->outnet->infra, &sq->addr,
			sq->addrlen, sq->zone, sq->zonelen, sq->qtype,
			roundtime, sq->last_rtt, (time_t)now.tv_sec))
			FUNC7("out of memory noting rtt.");
		}
	    }
	}
	/* insert address into reply info */
	if(!rep) {
		/* create one if there isn't (on errors) */
		rep = &r2;
		r2.c = c;
	}
	FUNC8(&rep->addr, &sq->addr, sq->addrlen);
	rep->addrlen = sq->addrlen;
	FUNC9(sq, error, c, rep);
	return 0;
}