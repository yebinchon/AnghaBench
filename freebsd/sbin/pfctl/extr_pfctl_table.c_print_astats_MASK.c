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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {scalar_t__ pfra_fback; } ;
struct pfr_astats {scalar_t__** pfras_bytes; scalar_t__** pfras_packets; TYPE_1__ pfras_a; int /*<<< orphan*/  pfras_tzero; } ;

/* Variables and functions */
 int PFR_DIR_MAX ; 
 scalar_t__ PFR_FB_NOCOUNT ; 
 int PFR_OP_ADDR_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char*** stats_text ; 

void
FUNC3(struct pfr_astats *as, int dns)
{
	time_t	time = as->pfras_tzero;
	int	dir, op;

	FUNC1(&as->pfras_a, NULL, dns);
	FUNC2("\tCleared:     %s", FUNC0(&time));
 	if (as->pfras_a.pfra_fback == PFR_FB_NOCOUNT)
		return;
	for (dir = 0; dir < PFR_DIR_MAX; dir++)
		for (op = 0; op < PFR_OP_ADDR_MAX; op++)
			FUNC2("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n",
			    stats_text[dir][op],
			    (unsigned long long)as->pfras_packets[dir][op],
			    (unsigned long long)as->pfras_bytes[dir][op]);
}