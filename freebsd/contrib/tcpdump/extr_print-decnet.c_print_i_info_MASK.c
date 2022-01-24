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
 int II_BLOCK ; 
#define  II_ENDNODE 130 
#define  II_L1ROUT 129 
#define  II_L2ROUT 128 
 int II_NOMCAST ; 
 int II_TYPEMASK ; 
 int II_VERIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(netdissect_options *ndo,
             int info)
{
	int ntype = info & II_TYPEMASK;
	switch (ntype) {
	case 0: FUNC0((ndo, "reserved-ntype? ")); break;
	case II_L2ROUT: FUNC0((ndo, "l2rout ")); break;
	case II_L1ROUT: FUNC0((ndo, "l1rout ")); break;
	case II_ENDNODE: FUNC0((ndo, "endnode ")); break;
	}
	if (info & II_VERIF)
	    FUNC0((ndo, "verif "));
	if (info & II_NOMCAST)
	    FUNC0((ndo, "nomcast "));
	if (info & II_BLOCK)
	    FUNC0((ndo, "blo "));
}