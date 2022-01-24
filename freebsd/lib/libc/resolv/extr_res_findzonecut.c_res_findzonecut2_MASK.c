#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union res_sockaddr_union {int dummy; } res_sockaddr_union ;
typedef  int u_long ;
typedef  int /*<<< orphan*/  rrset_ns ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  ns_class ;
struct TYPE_7__ {int pfcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NS_MAXDNAME ; 
 int RES_EXHAUSTIVE ; 
 int RES_PRF_ADD ; 
 int RES_PRF_ANS ; 
 int RES_PRF_AUTH ; 
 int RES_PRF_HEAD1 ; 
 int RES_PRF_HEAD2 ; 
 int RES_PRF_HEADX ; 
 int RES_PRF_QUES ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int,char*,size_t,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,union res_sockaddr_union*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(res_state statp, const char *dname, ns_class class, int opts,
		 char *zname, size_t zsize, union res_sockaddr_union *addrs,
		 int naddrs)
{
	char mname[NS_MAXDNAME];
	u_long save_pfcode;
	rrset_ns nsrrs;
	int n;

	FUNC0(("START dname='%s' class=%s, zsize=%ld, naddrs=%d",
		 dname, FUNC6(class), (long)zsize, naddrs));
	save_pfcode = statp->pfcode;
	statp->pfcode |= RES_PRF_HEAD2 | RES_PRF_HEAD1 | RES_PRF_HEADX |
			 RES_PRF_QUES | RES_PRF_ANS |
			 RES_PRF_AUTH | RES_PRF_ADD;
	FUNC1(nsrrs);

	FUNC0(("get the soa, and see if it has enough glue"));
	if ((n = FUNC5(statp, dname, class, opts, zname, zsize,
			 mname, sizeof mname, &nsrrs)) < 0 ||
	    ((opts & RES_EXHAUSTIVE) == 0 &&
	     (n = FUNC7(statp, mname, &nsrrs, addrs, naddrs)) > 0))
		goto done;

	FUNC0(("get the ns rrset and see if it has enough glue"));
	if ((n = FUNC4(statp, zname, class, opts, &nsrrs)) < 0 ||
	    ((opts & RES_EXHAUSTIVE) == 0 &&
	     (n = FUNC7(statp, mname, &nsrrs, addrs, naddrs)) > 0))
		goto done;

	FUNC0(("get the missing glue and see if it's finally enough"));
	if ((n = FUNC3(statp, class, opts, &nsrrs)) >= 0)
		n = FUNC7(statp, mname, &nsrrs, addrs, naddrs);

 done:
	FUNC0(("FINISH n=%d (%s)", n, (n < 0) ? FUNC8(errno) : "OK"));
	FUNC2(&nsrrs);
	statp->pfcode = save_pfcode;
	return (n);
}