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
typedef  int /*<<< orphan*/  uint32_t ;
struct uni {int custat; int /*<<< orphan*/  arg; TYPE_1__* funcs; int /*<<< orphan*/  timer309; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* uni_output ) (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* saal_output ) (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  CU_STAT0 131 
#define  CU_STAT1 130 
#define  CU_STAT2 129 
#define  CU_STAT3 128 
 int /*<<< orphan*/  SAAL_ESTABLISH_request ; 
 int /*<<< orphan*/  SIGO_LINK_ESTABLISH_request ; 
 int /*<<< orphan*/  FUNC1 (struct uni*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIAPI_ERROR_BAD_CALLSTATE ; 
 int /*<<< orphan*/  UNIAPI_LINK_ESTABLISH_confirm ; 
 int /*<<< orphan*/  UNIAPI_OK ; 
 int /*<<< orphan*/  UNI_FAC_COORD ; 
 int /*<<< orphan*/  FUNC3 (struct uni*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uni*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t309 ; 
 int /*<<< orphan*/  FUNC7 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct uni *uni, uint32_t cookie)
{
	switch (uni->custat) {

	  case CU_STAT0:
		/*
		 * Q.2931:Coord-U 4/10
		 */
		uni->funcs->saal_output(uni, uni->arg,
		    SAAL_ESTABLISH_request, NULL);
		if (!FUNC1(uni, t309))
			FUNC2(uni, t309, uni->timer309);
		FUNC4(uni, CU_STAT1);
		if (cookie)
			FUNC8(uni, UNIAPI_OK, cookie, 0);
		break;

	  case CU_STAT1:
		/*
		 * Q.2931:Coord-U 4/10
		 * This is probably missing from the delay field.
		 */
		FUNC7(uni, SIGO_LINK_ESTABLISH_request,
		    cookie, NULL);
		break;

	  case CU_STAT2:
		FUNC8(uni, UNIAPI_ERROR_BAD_CALLSTATE, cookie, 0);
		if (cookie == 0)
			FUNC3(uni, UNI_FAC_COORD,
			    "signal link-establish.request in CU%u",
			    uni->custat);
		break;

	  case CU_STAT3:
		/*
		 * Q.2931:Coord-U 5/10
		 */
		uni->funcs->uni_output(uni, uni->arg,
		    UNIAPI_LINK_ESTABLISH_confirm, 0, NULL);
		FUNC8(uni, UNIAPI_OK, cookie, 0);
		break;

	  default:
		FUNC0(0, ("CU_STAT*"));
	}
}