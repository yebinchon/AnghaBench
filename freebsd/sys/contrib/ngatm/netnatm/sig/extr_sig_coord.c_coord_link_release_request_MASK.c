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
typedef  int /*<<< orphan*/  u_int ;
struct uni {int custat; int /*<<< orphan*/  arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* saal_output ) (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  CU_STAT0 131 
#define  CU_STAT1 130 
#define  CU_STAT2 129 
#define  CU_STAT3 128 
 int /*<<< orphan*/  SAAL_RELEASE_request ; 
 int /*<<< orphan*/  UNIAPI_ERROR_BAD_CALLSTATE ; 
 int /*<<< orphan*/  UNIAPI_OK ; 
 int /*<<< orphan*/  FUNC1 (struct uni*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uni *uni, u_int cookie)
{
	switch (uni->custat) {

	  case CU_STAT0:
	  case CU_STAT1:
	  case CU_STAT2:
		FUNC3(uni, UNIAPI_ERROR_BAD_CALLSTATE, cookie, 0);
		break;

	  case CU_STAT3:
		/*
		 * Q.2931:Coord-U 5/10
		 */
		uni->funcs->saal_output(uni, uni->arg,
		    SAAL_RELEASE_request, NULL);
		FUNC1(uni, CU_STAT2);
		FUNC3(uni, UNIAPI_OK, cookie, 0);
		break;

	  default:
		FUNC0(0, ("CU_STAT*"));
	}
}