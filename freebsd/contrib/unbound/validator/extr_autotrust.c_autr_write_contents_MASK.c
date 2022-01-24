#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trust_anchor {TYPE_1__* autr; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct autr_ta {scalar_t__ s; scalar_t__ last_change; scalar_t__ pending_count; int /*<<< orphan*/  rr_len; int /*<<< orphan*/  rr; int /*<<< orphan*/  dname_len; struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; scalar_t__ retry_time; scalar_t__ query_interval; scalar_t__ query_failed; scalar_t__ next_probe_time; scalar_t__ last_success; scalar_t__ last_queried; scalar_t__ revoked; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AUTR_STATE_REMOVED ; 
 scalar_t__ AUTR_STATE_START ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 char* FUNC0 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(FILE* out, char* fn, struct trust_anchor* tp)
{
	char tmi[32];
	struct autr_ta* ta;
	char* str;

	/* write pretty header */
	if(FUNC1(out, "; autotrust trust anchor file\n") < 0) {
		FUNC3("could not write to %s: %s", fn, FUNC7(errno));
		return 0;
	}
	if(tp->autr->revoked) {
		if(FUNC1(out, ";;REVOKED\n") < 0 ||
		   FUNC1(out, "; The zone has all keys revoked, and is\n"
			"; considered as if it has no trust anchors.\n"
			"; the remainder of the file is the last probe.\n"
			"; to restart the trust anchor, overwrite this file.\n"
			"; with one containing valid DNSKEYs or DSes.\n") < 0) {
		   FUNC3("could not write to %s: %s", fn, FUNC7(errno));
		   return 0;
		}
	}
	if(!FUNC4(out, fn, tp->name, tp->namelen, tp->dclass)) {
		return 0;
	}
	if(FUNC1(out, ";;last_queried: %u ;;%s", 
		(unsigned int)tp->autr->last_queried, 
		FUNC0(&(tp->autr->last_queried), tmi)) < 0 ||
	   FUNC1(out, ";;last_success: %u ;;%s", 
		(unsigned int)tp->autr->last_success,
		FUNC0(&(tp->autr->last_success), tmi)) < 0 ||
	   FUNC1(out, ";;next_probe_time: %u ;;%s", 
		(unsigned int)tp->autr->next_probe_time,
		FUNC0(&(tp->autr->next_probe_time), tmi)) < 0 ||
	   FUNC1(out, ";;query_failed: %d\n", (int)tp->autr->query_failed)<0
	   || FUNC1(out, ";;query_interval: %d\n", 
	   (int)tp->autr->query_interval) < 0 ||
	   FUNC1(out, ";;retry_time: %d\n", (int)tp->autr->retry_time) < 0) {
		FUNC3("could not write to %s: %s", fn, FUNC7(errno));
		return 0;
	}

	/* write anchors */
	for(ta=tp->autr->keys; ta; ta=ta->next) {
		/* by default do not store START and REMOVED keys */
		if(ta->s == AUTR_STATE_START)
			continue;
		if(ta->s == AUTR_STATE_REMOVED)
			continue;
		/* only store keys */
		if(FUNC6(ta->rr, ta->rr_len, ta->dname_len)
			!= LDNS_RR_TYPE_DNSKEY)
			continue;
		str = FUNC5(ta->rr, ta->rr_len);
		if(!str || !str[0]) {
			FUNC2(str);
			FUNC3("malloc failure writing %s", fn);
			return 0;
		}
		str[FUNC8(str)-1] = 0; /* remove newline */
		if(FUNC1(out, "%s ;;state=%d [%s] ;;count=%d "
			";;lastchange=%u ;;%s", str, (int)ta->s, 
			FUNC9(ta->s), (int)ta->pending_count,
			(unsigned int)ta->last_change, 
			FUNC0(&(ta->last_change), tmi)) < 0) {
		   FUNC3("could not write to %s: %s", fn, FUNC7(errno));
		   FUNC2(str);
		   return 0;
		}
		FUNC2(str);
	}
	return 1;
}