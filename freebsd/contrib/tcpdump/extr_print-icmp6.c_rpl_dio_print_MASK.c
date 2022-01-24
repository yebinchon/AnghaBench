#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct rpl_dio_genoption {int dummy; } ;
struct nd_rpl_dio {int /*<<< orphan*/  rpl_mopprf; int /*<<< orphan*/  rpl_dagrank; int /*<<< orphan*/  rpl_instanceid; int /*<<< orphan*/  rpl_dtsn; int /*<<< orphan*/  rpl_dagid; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_rpl_dio const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct rpl_dio_genoption const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpl_mop_values ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(netdissect_options *ndo,
              const u_char *bp, u_int length)
{
        const struct nd_rpl_dio *dio = (const struct nd_rpl_dio *)bp;
        const char *dagid_str;

        FUNC2(*dio);
        dagid_str = FUNC6 (ndo, dio->rpl_dagid);

        FUNC1((ndo, " [dagid:%s,seq:%u,instance:%u,rank:%u,%smop:%s,prf:%u]",
                  dagid_str,
                  dio->rpl_dtsn,
                  dio->rpl_instanceid,
                  FUNC0(&dio->rpl_dagrank),
                  FUNC3(dio->rpl_mopprf) ? "grounded,":"",
                  FUNC8(rpl_mop_values, "mop%u", FUNC4(dio->rpl_mopprf)),
                  FUNC5(dio->rpl_mopprf)));

        if(ndo->ndo_vflag > 1) {
                const struct rpl_dio_genoption *opt = (const struct rpl_dio_genoption *)&dio[1];
                FUNC7(ndo, opt, length);
        }
	return;
trunc:
	FUNC1((ndo," [|truncated]"));
	return;
}