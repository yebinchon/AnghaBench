#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rrset_ns ;
struct TYPE_8__ {int /*<<< orphan*/ * name; scalar_t__ flags; int /*<<< orphan*/  addrs; } ;
typedef  TYPE_1__ rr_ns ;
typedef  int /*<<< orphan*/  res_state ;
typedef  int /*<<< orphan*/  ns_sect ;
typedef  int /*<<< orphan*/  ns_rr ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  scalar_t__ ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MAXDNAME ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  ns_o_query ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_s_ar ; 
 int FUNC16 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ ns_t_ns ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 

__attribute__((used)) static int
FUNC21(res_state statp, ns_msg *msg, ns_sect sect,
	const char *owner, ns_class class, int opts,
	rrset_ns *nsrrsp)
{
	int i;

	for (i = 0; i < FUNC8(*msg, sect); i++) {
		char tname[MAXDNAME];
		const u_char *rdata;
		rr_ns *nsrr;
		ns_rr rr;

		if (FUNC11(msg, sect, i, &rr) < 0) {
			FUNC1(("save_ns: ns_parserr(%s, %d) failed",
				 FUNC18(sect, ns_o_query), i));
			return (-1);
		}
		if (FUNC15(rr) != ns_t_ns ||
		    FUNC12(rr) != class ||
		    FUNC16(FUNC13(rr), owner) != 1)
			continue;
		nsrr = FUNC4(nsrrsp, FUNC13(rr));
		if (nsrr == NULL) {
			nsrr = FUNC6(sizeof *nsrr);
			if (nsrr == NULL) {
				FUNC1(("save_ns: malloc failed"));
				return (-1);
			}
			rdata = FUNC14(rr);
			if (FUNC10(FUNC7(*msg),
					       FUNC9(*msg), rdata,
					       tname, sizeof tname) < 0) {
				FUNC1(("save_ns: ns_name_uncompress failed")
					);
				FUNC5(nsrr);
				return (-1);
			}
			nsrr->name = FUNC20(tname);
			if (nsrr->name == NULL) {
				FUNC1(("save_ns: strdup failed"));
				FUNC5(nsrr);
				return (-1);
			}
			FUNC2(nsrr, link);
			FUNC3(nsrr->addrs);
			nsrr->flags = 0;
			FUNC0(*nsrrsp, nsrr, link);
		}
		if (FUNC19(statp, msg, ns_s_ar,
			   nsrr->name, class, opts, nsrr) < 0) {
			FUNC1(("save_ns: save_r('%s', %s) failed",
				 nsrr->name, FUNC17(class)));
			return (-1);
		}
	}
	return (0);
}