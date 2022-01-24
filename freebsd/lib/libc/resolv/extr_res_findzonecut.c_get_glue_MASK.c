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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rrset_ns ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  addrs; } ;
typedef  TYPE_1__ rr_ns ;
typedef  int /*<<< orphan*/  res_state ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  int /*<<< orphan*/  ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_MAXMSG ; 
 int RR_NS_HAVE_V4 ; 
 int RR_NS_HAVE_V6 ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_s_an ; 
 int /*<<< orphan*/  ns_t_a ; 
 int /*<<< orphan*/  ns_t_aaaa ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(res_state statp, ns_class class, int opts, rrset_ns *nsrrsp) {
	rr_ns *nsrr, *nsrr_n;
	u_char *resp;

	resp = FUNC7(NS_MAXMSG);
	if (resp == NULL)
		return(-1);

	/* Go and get the A RRs for each empty NS RR on our list. */
	for (nsrr = FUNC2(*nsrrsp); nsrr != NULL; nsrr = nsrr_n) {
		ns_msg msg;
		int n;

		nsrr_n = FUNC3(nsrr, link);

		if ((nsrr->flags & RR_NS_HAVE_V4) == 0) {
			n = FUNC4(statp, nsrr->name, class, ns_t_a,
				     resp, &msg);
			if (n < 0) {
				FUNC0(
				       ("get_glue: do_query('%s', %s') failed",
					nsrr->name, FUNC8(class)));
				goto cleanup;
			}
			if (n > 0) {
				FUNC0((
			"get_glue: do_query('%s', %s') CNAME or DNAME found",
					 nsrr->name, FUNC8(class)));
			}
			if (FUNC9(statp, &msg, ns_s_an, nsrr->name, class,
				   opts, nsrr) < 0) {
				FUNC0(("get_glue: save_r('%s', %s) failed",
					 nsrr->name, FUNC8(class)));
				goto cleanup;
			}
		}

		if ((nsrr->flags & RR_NS_HAVE_V6) == 0) {
			n = FUNC4(statp, nsrr->name, class, ns_t_aaaa,
				     resp, &msg);
			if (n < 0) {
				FUNC0(
				       ("get_glue: do_query('%s', %s') failed",
					nsrr->name, FUNC8(class)));
				goto cleanup;
			}
			if (n > 0) {
				FUNC0((
			"get_glue: do_query('%s', %s') CNAME or DNAME found",
					 nsrr->name, FUNC8(class)));
			}
			if (FUNC9(statp, &msg, ns_s_an, nsrr->name, class,
				   opts, nsrr) < 0) {
				FUNC0(("get_glue: save_r('%s', %s) failed",
					 nsrr->name, FUNC8(class)));
				goto cleanup;
			}
		}

		/* If it's still empty, it's just chaff. */
		if (FUNC1(nsrr->addrs)) {
			FUNC0(("get_glue: removing empty '%s' NS",
				 nsrr->name));
			FUNC6(nsrrsp, nsrr);
		}
	}
	FUNC5(resp);
	return (0);

 cleanup:
	FUNC5(resp);
	return (-1);
}