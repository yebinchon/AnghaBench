#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_2__ {int /*<<< orphan*/  p_uid; int /*<<< orphan*/  p_sid; } ;
struct pkt_rreq {int /*<<< orphan*/  pr_eseq; int /*<<< orphan*/  pr_sseq; TYPE_1__ pr_page; int /*<<< orphan*/  pr_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pkt_rreq const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
        const struct pkt_rreq *rreq, u_int len)
{
	FUNC1((ndo, " wb-rreq:"));
	if (len < sizeof(*rreq) || !FUNC2(*rreq))
		return (-1);

	FUNC1((ndo, " please repair %s %s:%u<%u:%u>",
	       FUNC3(ndo, &rreq->pr_id),
	       FUNC3(ndo, &rreq->pr_page.p_sid),
	       FUNC0(&rreq->pr_page.p_uid),
	       FUNC0(&rreq->pr_sseq),
	       FUNC0(&rreq->pr_eseq)));
	return (0);
}