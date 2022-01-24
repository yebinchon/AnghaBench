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
struct cam_sim {int /*<<< orphan*/  (* sim_poll ) (struct cam_sim*) ;struct mtx* mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_sim*) ; 

void
FUNC4(struct cam_sim *sim)
{
	struct mtx *mtx;

	mtx = sim->mtx;
	if (mtx)
		FUNC1(mtx);
	(*(sim->sim_poll))(sim);
	if (mtx)
		FUNC2(mtx);
	FUNC0();
}