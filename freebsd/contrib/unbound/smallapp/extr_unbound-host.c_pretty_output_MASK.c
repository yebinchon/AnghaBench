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
struct ub_result {int rcode; char const* why_bogus; char* canonname; char* qname; scalar_t__ bogus; scalar_t__* len; scalar_t__* data; scalar_t__ answer_len; int /*<<< orphan*/  answer_packet; int /*<<< orphan*/  havedata; } ;

/* Variables and functions */
 int LDNS_RR_TYPE_A ; 
 int LDNS_RR_TYPE_AAAA ; 
 int LDNS_RR_TYPE_ANY ; 
 int LDNS_RR_TYPE_MX ; 
 int LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int,char const*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (struct ub_result*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC12(char* q, int t, int c, struct ub_result* result, int docname)
{
	int i;
	const char *secstatus = FUNC8(result);
	char tstr[16];
	char cstr[16];
	char rcodestr[16];
	FUNC6(tstr, 16, t);
	FUNC3(cstr, 16, c);
	FUNC4(rcodestr, 16, result->rcode);

	if(!result->havedata && result->rcode) {
		FUNC7("Host %s not found: %d(%s).",
			q, result->rcode, rcodestr);
		if(verb > 0)
			FUNC7(" %s", secstatus);
		FUNC7("\n");
		if(result->bogus && result->why_bogus)
			FUNC7("%s\n", result->why_bogus);
		return;
	}
	if(docname && result->canonname &&
		result->canonname != result->qname) {
		FUNC7("%s is an alias for %s", result->qname, 
			result->canonname);
		if(verb > 0)
			FUNC7(" %s", secstatus);
		FUNC7("\n");
	}
	/* remove trailing . from long canonnames for nicer output */
	if(result->canonname && FUNC11(result->canonname) > 1 &&
		result->canonname[FUNC11(result->canonname)-1] == '.')
		result->canonname[FUNC11(result->canonname)-1] = 0;
	if(!result->havedata) {
		if(verb > 0) {
			FUNC7("%s", result->canonname?result->canonname:q);
			if(FUNC10(cstr, "IN") != 0)
				FUNC7(" in class %s", cstr);
			if(t == LDNS_RR_TYPE_A)
				FUNC7(" has no address");
			else if(t == LDNS_RR_TYPE_AAAA)
				FUNC7(" has no IPv6 address");
			else if(t == LDNS_RR_TYPE_PTR)
				FUNC7(" has no domain name ptr");
			else if(t == LDNS_RR_TYPE_MX)
				FUNC7(" has no mail handler record");
			else if(t == LDNS_RR_TYPE_ANY) {
				char* s = FUNC9(
					result->answer_packet,
					(size_t)result->answer_len);
				if(!s) {
					FUNC1(stderr, "alloc failure\n");
					FUNC0(1);
				}
				FUNC7("%s\n", s);
				FUNC2(s);
			} else	FUNC7(" has no %s record", tstr);
			FUNC7(" %s\n", secstatus);
		}
		/* else: emptiness to indicate no data */
		if(result->bogus && result->why_bogus)
			FUNC7("%s\n", result->why_bogus);
		return;
	}
	i=0;
	while(result->data[i])
	{
		FUNC5(
			result->canonname?result->canonname:q,
			cstr, tstr, t, secstatus, result->data[i],
			(size_t)result->len[i]);
		i++;
	}
	if(result->bogus && result->why_bogus)
		FUNC7("%s\n", result->why_bogus);
}