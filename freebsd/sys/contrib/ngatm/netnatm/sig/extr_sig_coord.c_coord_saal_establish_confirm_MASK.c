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
struct uni {int custat; int /*<<< orphan*/  arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* uni_output ) (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  CU_STAT0 131 
#define  CU_STAT1 130 
#define  CU_STAT2 129 
#define  CU_STAT3 128 
 int /*<<< orphan*/  SIGC_LINK_ESTABLISH_confirm ; 
 int /*<<< orphan*/  FUNC1 (struct uni*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIAPI_LINK_ESTABLISH_confirm ; 
 int /*<<< orphan*/  UNI_FAC_COORD ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uni*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uni*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t309 ; 

__attribute__((used)) static void
FUNC7(struct uni *uni)
{
	switch (uni->custat) {

	  case CU_STAT0:
	  case CU_STAT2:
		FUNC2(uni, UNI_FAC_COORD,
		    "signal saal_establish.confirm in CU%u", uni->custat);
		break;

	  case CU_STAT1:
		/*
		 * Q.2931:Co-ord-U 4/10
		 */
		FUNC1(uni, t309);
		FUNC4(uni, SIGC_LINK_ESTABLISH_confirm);
		uni->funcs->uni_output(uni, uni->arg,
		    UNIAPI_LINK_ESTABLISH_confirm, 0, NULL);
		FUNC3(uni, CU_STAT3);
		break;

	  case CU_STAT3:
		/*
		 * Q.2931:Coord-U 5/10
		 */
		FUNC4(uni, SIGC_LINK_ESTABLISH_confirm);
		uni->funcs->uni_output(uni, uni->arg,
		    UNIAPI_LINK_ESTABLISH_confirm, 0, NULL);
		break;

	  default:
		FUNC0(0, ("CU_STAT*"));
	}
}