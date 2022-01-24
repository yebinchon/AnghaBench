#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct serviced_query {scalar_t__ status; int last_rtt; scalar_t__ retry; int edns_lame_known; int /*<<< orphan*/  qtype; int /*<<< orphan*/  zonelen; int /*<<< orphan*/  zone; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; TYPE_2__ last_sent_time; int /*<<< orphan*/  want_dnssec; struct outside_network* outnet; int /*<<< orphan*/  qbuflen; scalar_t__ qbuf; int /*<<< orphan*/ * pending; } ;
struct outside_network {int /*<<< orphan*/  infra; struct timeval* now_tv; TYPE_1__* dtenv; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int /*<<< orphan*/  buffer; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ log_forwarder_response_messages; scalar_t__ log_resolver_response_messages; } ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_FORMERR ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NOTIMPL ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_YXDOMAIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NETEVENT_CLOSED ; 
 int NETEVENT_NOERROR ; 
 int NETEVENT_TIMEOUT ; 
 scalar_t__ OUTBOUND_UDP_RETRY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct serviced_query*,int,struct comm_point*,struct comm_reply*) ; 
 scalar_t__ serviced_query_TCP ; 
 scalar_t__ serviced_query_TCP_EDNS ; 
 scalar_t__ serviced_query_UDP ; 
 scalar_t__ serviced_query_UDP_EDNS ; 
 scalar_t__ serviced_query_UDP_EDNS_FRAG ; 
 scalar_t__ serviced_query_UDP_EDNS_fallback ; 
 int /*<<< orphan*/  FUNC11 (struct serviced_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct serviced_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

int 
FUNC15(struct comm_point* c, void* arg, int error,
        struct comm_reply* rep)
{
	struct serviced_query* sq = (struct serviced_query*)arg;
	struct outside_network* outnet = sq->outnet;
	struct timeval now = *sq->outnet->now_tv;

	sq->pending = NULL; /* removed after callback */
	if(error == NETEVENT_TIMEOUT) {
		int rto = 0;
		if(sq->status == serviced_query_UDP_EDNS && sq->last_rtt < 5000) {
			/* fallback to 1480/1280 */
			sq->status = serviced_query_UDP_EDNS_FRAG;
			FUNC8(VERB_ALGO, "try edns1xx0", sq->qbuf+10,
				&sq->addr, sq->addrlen);
			if(!FUNC12(sq, c->buffer)) {
				FUNC10(sq, NETEVENT_CLOSED, c, rep);
			}
			return 0;
		}
		if(sq->status == serviced_query_UDP_EDNS_FRAG) {
			/* fragmentation size did not fix it */
			sq->status = serviced_query_UDP_EDNS;
		}
		sq->retry++;
		if(!(rto=FUNC4(outnet->infra, &sq->addr, sq->addrlen,
			sq->zone, sq->zonelen, sq->qtype, -1, sq->last_rtt,
			(time_t)now.tv_sec)))
			FUNC7("out of memory in UDP exponential backoff");
		if(sq->retry < OUTBOUND_UDP_RETRY) {
			FUNC8(VERB_ALGO, "retry query", sq->qbuf+10,
				&sq->addr, sq->addrlen);
			if(!FUNC12(sq, c->buffer)) {
				FUNC10(sq, NETEVENT_CLOSED, c, rep);
			}
			return 0;
		}
	}
	if(error != NETEVENT_NOERROR) {
		/* udp returns error (due to no ID or interface available) */
		FUNC10(sq, error, c, rep);
		return 0;
	}
#ifdef USE_DNSTAP
	if(error == NETEVENT_NOERROR && outnet->dtenv &&
	   (outnet->dtenv->log_resolver_response_messages ||
	    outnet->dtenv->log_forwarder_response_messages))
		dt_msg_send_outside_response(outnet->dtenv, &sq->addr, c->type,
		sq->zone, sq->zonelen, sq->qbuf, sq->qbuflen,
		&sq->last_sent_time, sq->outnet->now_tv, c->buffer);
#endif
	if( (sq->status == serviced_query_UDP_EDNS 
		||sq->status == serviced_query_UDP_EDNS_FRAG)
		&& (FUNC0(FUNC13(c->buffer)) 
			== LDNS_RCODE_FORMERR || FUNC0(
			FUNC13(c->buffer)) == LDNS_RCODE_NOTIMPL
		    || FUNC9(c->buffer, sq->qtype)
			)) {
		/* try to get an answer by falling back without EDNS */
		FUNC14(VERB_ALGO, "serviced query: attempt without EDNS");
		sq->status = serviced_query_UDP_EDNS_fallback;
		sq->retry = 0;
		if(!FUNC12(sq, c->buffer)) {
			FUNC10(sq, NETEVENT_CLOSED, c, rep);
		}
		return 0;
	} else if(sq->status == serviced_query_UDP_EDNS && 
		!sq->edns_lame_known) {
		/* now we know that edns queries received answers store that */
		FUNC5(VERB_ALGO, "serviced query: EDNS works for",
			&sq->addr, sq->addrlen);
		if(!FUNC3(outnet->infra, &sq->addr, sq->addrlen, 
			sq->zone, sq->zonelen, 0, (time_t)now.tv_sec)) {
			FUNC7("Out of memory caching edns works");
		}
		sq->edns_lame_known = 1;
	} else if(sq->status == serviced_query_UDP_EDNS_fallback &&
		!sq->edns_lame_known && (FUNC0(
		FUNC13(c->buffer)) == LDNS_RCODE_NOERROR || 
		FUNC0(FUNC13(c->buffer)) == 
		LDNS_RCODE_NXDOMAIN || FUNC0(FUNC13(
		c->buffer)) == LDNS_RCODE_YXDOMAIN)) {
		/* the fallback produced a result that looks promising, note
		 * that this server should be approached without EDNS */
		/* only store noEDNS in cache if domain is noDNSSEC */
		if(!sq->want_dnssec) {
		  FUNC5(VERB_ALGO, "serviced query: EDNS fails for",
			&sq->addr, sq->addrlen);
		  if(!FUNC3(outnet->infra, &sq->addr, sq->addrlen,
			sq->zone, sq->zonelen, -1, (time_t)now.tv_sec)) {
			FUNC7("Out of memory caching no edns for host");
		  }
		} else {
		  FUNC5(VERB_ALGO, "serviced query: EDNS fails, but "
			"not stored because need DNSSEC for", &sq->addr,
			sq->addrlen);
		}
		sq->status = serviced_query_UDP;
	}
	if(now.tv_sec > sq->last_sent_time.tv_sec ||
		(now.tv_sec == sq->last_sent_time.tv_sec &&
		now.tv_usec > sq->last_sent_time.tv_usec)) {
		/* convert from microseconds to milliseconds */
		int roundtime = ((int)(now.tv_sec - sq->last_sent_time.tv_sec))*1000
		  + ((int)now.tv_usec - (int)sq->last_sent_time.tv_usec)/1000;
		FUNC14(VERB_ALGO, "measured roundtrip at %d msec", roundtime);
		FUNC6(roundtime >= 0);
		/* in case the system hibernated, do not enter a huge value,
		 * above this value gives trouble with server selection */
		if(roundtime < 60000) {
		    if(!FUNC4(outnet->infra, &sq->addr, sq->addrlen, 
			sq->zone, sq->zonelen, sq->qtype, roundtime,
			sq->last_rtt, (time_t)now.tv_sec))
			FUNC7("out of memory noting rtt.");
		}
	}
	/* perform TC flag check and TCP fallback after updating our
	 * cache entries for EDNS status and RTT times */
	if(FUNC1(FUNC13(c->buffer))) {
		/* fallback to TCP */
		/* this discards partial UDP contents */
		if(sq->status == serviced_query_UDP_EDNS ||
			sq->status == serviced_query_UDP_EDNS_FRAG ||
			sq->status == serviced_query_UDP_EDNS_fallback)
			/* if we have unfinished EDNS_fallback, start again */
			sq->status = serviced_query_TCP_EDNS;
		else	sq->status = serviced_query_TCP;
		FUNC11(sq, c->buffer);
		return 0;
	}
	/* yay! an answer */
	FUNC10(sq, error, c, rep);
	return 0;
}