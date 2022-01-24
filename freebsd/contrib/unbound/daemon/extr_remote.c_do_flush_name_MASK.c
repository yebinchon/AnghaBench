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
struct worker {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_MX ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NAPTR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SRV ; 
 int /*<<< orphan*/  FUNC0 (struct worker*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(RES* ssl, struct worker* w, char* arg)
{
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;
	if(!FUNC2(ssl, arg, &nm, &nmlen, &nmlabs))
		return;
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_A, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_AAAA, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_SOA, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_CNAME, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_DNAME, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_MX, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_PTR, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_SRV, LDNS_RR_CLASS_IN);
	FUNC0(w, nm, nmlen, LDNS_RR_TYPE_NAPTR, LDNS_RR_CLASS_IN);
	
	FUNC1(nm);
	FUNC3(ssl);
}