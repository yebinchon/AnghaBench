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
struct cam_sim {int refcount; struct mtx* mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct mtx cam_sim_free_mtx ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*) ; 

void
FUNC5(struct cam_sim *sim)
{
	struct mtx *mtx = sim->mtx;

	if (mtx) {
		if (!FUNC2(mtx))
			FUNC1(mtx);
		else
			mtx = NULL;
	} else {
		mtx = &cam_sim_free_mtx;
		FUNC1(mtx);
	}
	FUNC0(sim->refcount >= 1, ("sim->refcount >= 1"));
	sim->refcount--;
	if (sim->refcount == 0)
		FUNC4(sim);
	if (mtx)
		FUNC3(mtx);
}