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
struct targbh_softc {int /*<<< orphan*/  init_level; int /*<<< orphan*/  state; int /*<<< orphan*/  immed_notify_slist; int /*<<< orphan*/ * accept_tio_list; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  pending_queue; } ;
struct cam_periph {struct targbh_softc* softc; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_SCSIBH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TARGBH_STATE_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (struct targbh_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct cam_periph*) ; 

__attribute__((used)) static cam_status
FUNC7(struct cam_periph *periph, void *arg)
{
	struct targbh_softc *softc;

	/* Allocate our per-instance private storage */
	softc = (struct targbh_softc *)FUNC4(sizeof(*softc),
					      M_SCSIBH, M_NOWAIT);
	if (softc == NULL) {
		FUNC5("targctor: unable to malloc softc\n");
		return (CAM_REQ_CMP_ERR);
	}

	FUNC2(softc, sizeof(*softc));
	FUNC1(&softc->pending_queue);
	FUNC1(&softc->work_queue);
	softc->accept_tio_list = NULL;
	FUNC0(&softc->immed_notify_slist);
	softc->state = TARGBH_STATE_NORMAL;
	periph->softc = softc;
	softc->init_level++;

	if (FUNC6(periph) != CAM_REQ_CMP)
		FUNC3(periph);
	return (CAM_REQ_CMP);
}