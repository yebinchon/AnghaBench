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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct pass_softc {int dummy; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int FUNC0 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cam_periph* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(union ccb *ccb, u_int32_t cam_flags, u_int32_t sense_flags)
{
	struct cam_periph *periph;
	struct pass_softc *softc;

	periph = FUNC1(ccb->ccb_h.path);
	softc = (struct pass_softc *)periph->softc;
	
	return(FUNC0(ccb, cam_flags, sense_flags));
}