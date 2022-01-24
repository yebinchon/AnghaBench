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
struct cam_sim {scalar_t__ refcount; int /*<<< orphan*/  devq; struct mtx* mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_CAMSIM ; 
 int /*<<< orphan*/  PRIBIO ; 
 struct mtx cam_sim_free_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cam_sim*,struct mtx*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 

void
FUNC7(struct cam_sim *sim, int free_devq)
{
	struct mtx *mtx = sim->mtx;
	int error;

	if (mtx) {
		FUNC4(mtx, MA_OWNED);
	} else {
		mtx = &cam_sim_free_mtx;
		FUNC5(mtx);
	}
	sim->refcount--;
	if (sim->refcount > 0) {
		error = FUNC3(sim, mtx, PRIBIO, "simfree", 0);
		FUNC0(error == 0, ("invalid error value for msleep(9)"));
	}
	FUNC0(sim->refcount == 0, ("sim->refcount == 0"));
	if (sim->mtx == NULL)
		FUNC6(mtx);

	if (free_devq)
		FUNC1(sim->devq);
	FUNC2(sim, M_CAMSIM);
}