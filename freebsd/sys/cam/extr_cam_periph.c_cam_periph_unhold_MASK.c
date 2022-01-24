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
struct cam_periph {int flags; } ;

/* Variables and functions */
 int CAM_PERIPH_LOCKED ; 
 int CAM_PERIPH_LOCK_WANTED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 

void
FUNC3(struct cam_periph *periph)
{

	FUNC0(periph, MA_OWNED);

	periph->flags &= ~CAM_PERIPH_LOCKED;
	if ((periph->flags & CAM_PERIPH_LOCK_WANTED) != 0) {
		periph->flags &= ~CAM_PERIPH_LOCK_WANTED;
		FUNC2(periph);
	}

	FUNC1(periph);
}