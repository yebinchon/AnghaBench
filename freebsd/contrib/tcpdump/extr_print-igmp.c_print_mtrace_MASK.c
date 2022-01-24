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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct tr_query {int /*<<< orphan*/  tr_rttlqid; int /*<<< orphan*/  tr_raddr; int /*<<< orphan*/  tr_dst; int /*<<< orphan*/  tr_src; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tr_query const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo,
             register const u_char *bp, register u_int len)
{
    register const struct tr_query *tr = (const struct tr_query *)(bp + 8);

    FUNC3(*tr);
    if (len < 8 + sizeof (struct tr_query)) {
	FUNC2((ndo, " [invalid len %d]", len));
	return;
    }
    FUNC2((ndo, "mtrace %u: %s to %s reply-to %s",
        FUNC4(FUNC0(&tr->tr_rttlqid)),
        FUNC6(ndo, &tr->tr_src), FUNC6(ndo, &tr->tr_dst),
        FUNC6(ndo, &tr->tr_raddr)));
    if (FUNC1(FUNC0(&tr->tr_raddr)))
        FUNC2((ndo, " with-ttl %d", FUNC5(FUNC0(&tr->tr_rttlqid))));
    return;
trunc:
    FUNC2((ndo, "%s", tstr));
}