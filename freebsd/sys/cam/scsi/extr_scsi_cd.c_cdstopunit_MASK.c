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
union ccb {int /*<<< orphan*/  csio; } ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct cam_periph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 union ccb* FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_retry_count ; 
 int /*<<< orphan*/  cderror ; 
 int FUNC1 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 

__attribute__((used)) static int
FUNC4(struct cam_periph *periph, u_int32_t eject)
{
	union ccb *ccb;
	int error;

	error = 0;

	ccb = FUNC0(periph, CAM_PRIORITY_NORMAL);

	FUNC2(&ccb->csio,
			/* retries */ cd_retry_count,
			/* cbfcnp */ NULL,
			/* tag_action */ MSG_SIMPLE_Q_TAG,
			/* start */ FALSE,
			/* load_eject */ eject,
			/* immediate */ FALSE,
			/* sense_len */ SSD_FULL_SIZE,
			/* timeout */ 50000);

	error = FUNC1(ccb, cderror, /*cam_flags*/CAM_RETRY_SELTO,
			 /*sense_flags*/SF_RETRY_UA);

	FUNC3(ccb);

	return(error);
}