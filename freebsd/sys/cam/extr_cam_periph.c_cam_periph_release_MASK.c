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
struct mtx {int dummy; } ;
struct cam_periph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 struct mtx* FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 

void
FUNC5(struct cam_periph *periph)
{
	struct mtx *mtx;

	if (periph == NULL)
		return;
	
	FUNC0(periph, MA_NOTOWNED);
	mtx = FUNC1(periph);
	FUNC3(mtx);
	FUNC2(periph);
	FUNC4(mtx);
}