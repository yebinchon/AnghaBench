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
 int CAM_PERIPH_INVALID ; 
 int CAM_PERIPH_LOCKED ; 
 int CAM_PERIPH_LOCK_WANTED ; 
 int ENXIO ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int FUNC3 (struct cam_periph*,struct cam_periph*,int,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct cam_periph *periph, int priority)
{
	int error;

	/*
	 * Increment the reference count on the peripheral
	 * while we wait for our lock attempt to succeed
	 * to ensure the peripheral doesn't disappear out
	 * from user us while we sleep.
	 */

	if (FUNC0(periph) != 0)
		return (ENXIO);

	FUNC1(periph, MA_OWNED);
	while ((periph->flags & CAM_PERIPH_LOCKED) != 0) {
		periph->flags |= CAM_PERIPH_LOCK_WANTED;
		if ((error = FUNC3(periph, periph, priority,
		    "caplck", 0)) != 0) {
			FUNC2(periph);
			return (error);
		}
		if (periph->flags & CAM_PERIPH_INVALID) {
			FUNC2(periph);
			return (ENXIO);
		}
	}

	periph->flags |= CAM_PERIPH_LOCKED;
	return (0);
}