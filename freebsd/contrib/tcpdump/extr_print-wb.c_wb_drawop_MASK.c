#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_7__ {int /*<<< orphan*/  p_uid; int /*<<< orphan*/  p_sid; } ;
struct pkt_dop {int /*<<< orphan*/  pd_eseq; int /*<<< orphan*/  pd_sseq; TYPE_1__ pd_page; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pkt_dop const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct pkt_dop const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
          const struct pkt_dop *dop, u_int len)
{
	FUNC1((ndo, " wb-dop:"));
	if (len < sizeof(*dop) || !FUNC2(*dop))
		return (-1);
	len -= sizeof(*dop);

	FUNC1((ndo, " %s:%u<%u:%u>",
	    FUNC3(ndo, &dop->pd_page.p_sid),
	    FUNC0(&dop->pd_page.p_uid),
	    FUNC0(&dop->pd_sseq),
	    FUNC0(&dop->pd_eseq)));

	if (ndo->ndo_vflag)
		return (FUNC4(ndo, dop,
				FUNC0(&dop->pd_sseq),
				FUNC0(&dop->pd_eseq)));
	return (0);
}