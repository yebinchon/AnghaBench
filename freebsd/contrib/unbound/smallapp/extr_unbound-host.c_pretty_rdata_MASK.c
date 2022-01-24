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

/* Variables and functions */
 int LDNS_RR_TYPE_A ; 
 int LDNS_RR_TYPE_AAAA ; 
 int LDNS_RR_TYPE_MX ; 
 int LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC3(char* q, char* cstr, char* tstr, int t, const char* sec, 
	char* data, size_t len)
{
	FUNC1("%s", q);
	if(FUNC2(cstr, "IN") != 0)
		FUNC1(" in class %s", cstr);
	if(t == LDNS_RR_TYPE_A)
		FUNC1(" has address");
	else if(t == LDNS_RR_TYPE_AAAA)
		FUNC1(" has IPv6 address");
	else if(t == LDNS_RR_TYPE_MX)
		FUNC1(" mail is handled by");
	else if(t == LDNS_RR_TYPE_PTR)
		FUNC1(" domain name pointer");
	else	FUNC1(" has %s record", tstr);
	FUNC0(t, data, len);
	if(verb > 0)
		FUNC1(" %s", sec);
	FUNC1("\n");
}