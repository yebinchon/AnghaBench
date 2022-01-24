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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct rpl_dio_genoption {int dummy; } ;
struct nd_rpl_dao {int /*<<< orphan*/  rpl_flags; int /*<<< orphan*/  rpl_instanceid; int /*<<< orphan*/  rpl_daoseq; int /*<<< orphan*/  rpl_dagid; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ DAGID_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ ND_RPL_DAO_MIN_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct nd_rpl_dao const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct rpl_dio_genoption const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo,
              const u_char *bp, u_int length)
{
        const struct nd_rpl_dao *dao = (const struct nd_rpl_dao *)bp;
        const char *dagid_str = "<elided>";

        FUNC1(*dao);
        if (length < ND_RPL_DAO_MIN_LEN)
        	goto tooshort;

        bp += ND_RPL_DAO_MIN_LEN;
        length -= ND_RPL_DAO_MIN_LEN;
        if(FUNC3(dao->rpl_flags)) {
                FUNC2(dao->rpl_dagid, DAGID_LEN);
                if (length < DAGID_LEN)
                	goto tooshort;
                dagid_str = FUNC5 (ndo, dao->rpl_dagid);
                bp += DAGID_LEN;
                length -= DAGID_LEN;
        }

        FUNC0((ndo, " [dagid:%s,seq:%u,instance:%u%s%s,%02x]",
                  dagid_str,
                  dao->rpl_daoseq,
                  dao->rpl_instanceid,
                  FUNC4(dao->rpl_flags) ? ",acK":"",
                  FUNC3(dao->rpl_flags) ? ",Dagid":"",
                  dao->rpl_flags));

        if(ndo->ndo_vflag > 1) {
                const struct rpl_dio_genoption *opt = (const struct rpl_dio_genoption *)bp;
                FUNC6(ndo, opt, length);
        }
	return;

trunc:
	FUNC0((ndo," [|truncated]"));
	return;

tooshort:
	FUNC0((ndo," [|length too short]"));
	return;
}