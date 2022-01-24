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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TI_BLOCK ; 
#define  TI_ENDNODE 130 
#define  TI_L1ROUT 129 
#define  TI_L2ROUT 128 
 int TI_VERIF ; 

__attribute__((used)) static void
FUNC1(netdissect_options *ndo,
             int info)
{
	int ntype = info & 3;
	switch (ntype) {
	case 0: FUNC0((ndo, "reserved-ntype? ")); break;
	case TI_L2ROUT: FUNC0((ndo, "l2rout ")); break;
	case TI_L1ROUT: FUNC0((ndo, "l1rout ")); break;
	case TI_ENDNODE: FUNC0((ndo, "endnode ")); break;
	}
	if (info & TI_VERIF)
	    FUNC0((ndo, "verif "));
	if (info & TI_BLOCK)
	    FUNC0((ndo, "blo "));
}