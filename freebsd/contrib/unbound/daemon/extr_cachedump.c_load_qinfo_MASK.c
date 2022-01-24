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
struct regional {int dummy; } ;
struct query_info {size_t qname_len; int /*<<< orphan*/ * qname; int /*<<< orphan*/ * local_alias; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; } ;
typedef  int /*<<< orphan*/  rr ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct regional*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static char*
FUNC7(char* str, struct query_info* qinfo, struct regional* region)
{
	/* s is part of the buf */
	char* s = str;
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t rr_len = sizeof(rr), dname_len = 0;
	int status;

	/* skip three words */
	s = FUNC6(str, ' ');
	if(s) s = FUNC6(s+1, ' ');
	if(s) s = FUNC6(s+1, ' ');
	if(!s) {
		FUNC0("error line too short, %s", str);
		return NULL;
	}
	s[0] = 0;
	s++;

	/* parse them */
	status = FUNC3(str, rr, &rr_len, &dname_len,
		NULL, 0, NULL, 0);
	if(status != 0) {
		FUNC0("error cannot parse: %s %s",
			FUNC2(status), str);
		return NULL;
	}
	qinfo->qtype = FUNC5(rr, rr_len, dname_len);
	qinfo->qclass = FUNC4(rr, rr_len, dname_len);
	qinfo->qname_len = dname_len;
	qinfo->qname = (uint8_t*)FUNC1(region, rr, dname_len);
	qinfo->local_alias = NULL;
	if(!qinfo->qname) {
		FUNC0("error out of memory");
		return NULL;
	}

	return s;
}