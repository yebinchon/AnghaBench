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
struct uni {int custat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  CU_STAT0 131 
#define  CU_STAT1 130 
#define  CU_STAT2 129 
#define  CU_STAT3 128 
 int /*<<< orphan*/  SIGC_LINK_RELEASE_indication ; 
 int /*<<< orphan*/  UNI_FAC_COORD ; 
 int /*<<< orphan*/  FUNC1 (struct uni*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct uni*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uni *uni)
{
	switch (uni->custat) {

	  case CU_STAT0:
	  case CU_STAT2:
		FUNC1(uni, UNI_FAC_COORD,
		    "signal saal_release.indication in CU%u", uni->custat);
		break;

	  case CU_STAT1:
	  case CU_STAT3:
		/*
		 * Q.2931:Coord-U 4/10
		 * Q.2931:Coord-U 5/10
		 */
		FUNC3(uni, SIGC_LINK_RELEASE_indication);
		FUNC2(uni, CU_STAT0);
		break;

	  default:
		FUNC0(0, ("CU_STAT*"));
	}
}