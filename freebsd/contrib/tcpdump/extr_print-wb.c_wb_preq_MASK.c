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
struct pkt_preq {TYPE_1__ pp_page; int /*<<< orphan*/  pp_low; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pkt_preq const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
        const struct pkt_preq *preq, u_int len)
{
	FUNC1((ndo, " wb-preq:"));
	if (len < sizeof(*preq) || !FUNC2(*preq))
		return (-1);

	FUNC1((ndo, " need %u/%s:%u",
	       FUNC0(&preq->pp_low),
	       FUNC3(ndo, &preq->pp_page.p_sid),
	       FUNC0(&preq->pp_page.p_uid)));
	return (0);
}