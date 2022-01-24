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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int lineno; int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr_in {int lineno; int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct sldns_file_parse_state {int lineno; int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct iter_hints {int dummy; } ;
struct delegpt {int has_parent_side_NS; int /*<<< orphan*/  name; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  pstate ;
typedef  void* in_port_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ INET6_SIZE ; 
 scalar_t__ INET_SIZE ; 
 int LDNS_RR_BUF_SIZE ; 
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*,int /*<<< orphan*/ *,size_t,struct sockaddr_storage*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC6 (struct delegpt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct iter_hints*,int /*<<< orphan*/ ,struct delegpt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*,struct sockaddr_in6*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int 
FUNC25(struct iter_hints* hints, char* fname)
{
	struct sldns_file_parse_state pstate;
	struct delegpt* dp;
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t rr_len, dname_len;
	int status;
	uint16_t c = LDNS_RR_CLASS_IN;
	FILE* f = FUNC9(fname, "r");
	if(!f) {
		FUNC12("could not read root hints %s: %s",
			fname, FUNC23(errno));
		return 0;
	}
	dp = FUNC3(NULL);
	if(!dp) {
		FUNC12("out of memory reading root hints");
		FUNC7(f);
		return 0;
	}
	FUNC24(VERB_QUERY, "Reading root hints from %s", fname);
	FUNC15(&pstate, 0, sizeof(pstate));
	pstate.lineno = 1;
	dp->has_parent_side_NS = 1;
	while(!FUNC8(f)) {
		rr_len = sizeof(rr);
		dname_len = 0;
		status = FUNC16(f, rr, &rr_len, &dname_len,
			&pstate);
		if(status != 0) {
			FUNC12("reading root hints %s %d:%d: %s", fname,
				pstate.lineno, FUNC0(status),
				FUNC17(status));
			goto stop_read;
		}
		if(rr_len == 0)
			continue; /* EMPTY line, TTL or ORIGIN */
		if(FUNC22(rr, rr_len, dname_len)
			== LDNS_RR_TYPE_NS) {
			if(!FUNC1(dp, FUNC20(rr,
				rr_len, dname_len), 0)) {
				FUNC12("out of memory reading root hints");
				goto stop_read;
			}
			c = FUNC19(rr, rr_len, dname_len);
			if(!dp->name) {
				if(!FUNC6(dp, rr)) {
					FUNC12("out of memory.");
					goto stop_read;
				}
			}
		} else if(FUNC22(rr, rr_len, dname_len)
			== LDNS_RR_TYPE_A && FUNC21(rr,
			rr_len, dname_len) == INET_SIZE) {
			struct sockaddr_in sa;
			socklen_t len = (socklen_t)sizeof(sa);
			FUNC15(&sa, 0, len);
			sa.sin_family = AF_INET;
			sa.sin_port = (in_port_t)FUNC11(UNBOUND_DNS_PORT);
			FUNC14(&sa.sin_addr, 
				FUNC20(rr, rr_len, dname_len),
				INET_SIZE);
			if(!FUNC2(dp, rr, dname_len,
					(struct sockaddr_storage*)&sa, len, 
					0, 0)) {
				FUNC12("out of memory reading root hints");
				goto stop_read;
			}
		} else if(FUNC22(rr, rr_len, dname_len)
			== LDNS_RR_TYPE_AAAA && FUNC21(rr,
			rr_len, dname_len) == INET6_SIZE) {
			struct sockaddr_in6 sa;
			socklen_t len = (socklen_t)sizeof(sa);
			FUNC15(&sa, 0, len);
			sa.sin6_family = AF_INET6;
			sa.sin6_port = (in_port_t)FUNC11(UNBOUND_DNS_PORT);
			FUNC14(&sa.sin6_addr, 
				FUNC20(rr, rr_len, dname_len),
				INET6_SIZE);
			if(!FUNC2(dp, rr, dname_len,
					(struct sockaddr_storage*)&sa, len,
					0, 0)) {
				FUNC12("out of memory reading root hints");
				goto stop_read;
			}
		} else {
			char buf[17];
			FUNC18(FUNC22(rr,
				rr_len, dname_len), buf, sizeof(buf));
			FUNC13("root hints %s:%d skipping type %s",
				fname, pstate.lineno, buf);
		}
	}
	FUNC7(f);
	if(!dp->name) {
		FUNC13("root hints %s: no NS content", fname);
		FUNC4(dp);
		return 1;
	}
	if(!FUNC10(hints, c, dp, 0)) {
		return 0;
	}
	FUNC5(VERB_QUERY, dp);
	return 1;

stop_read:
	FUNC4(dp);
	FUNC7(f);
	return 0;
}