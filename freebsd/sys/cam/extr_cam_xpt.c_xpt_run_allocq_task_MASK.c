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
struct cam_periph {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PERIPH_RUN_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,int) ; 

__attribute__((used)) static void
FUNC4(void *context, int pending)
{
	struct cam_periph *periph = context;

	FUNC0(periph);
	periph->flags &= ~CAM_PERIPH_RUN_TASK;
	FUNC3(periph, 1);
	FUNC2(periph);
	FUNC1(periph);
}