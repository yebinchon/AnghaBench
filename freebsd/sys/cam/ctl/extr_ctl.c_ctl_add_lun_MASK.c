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
struct ctl_softc {int /*<<< orphan*/  pending_lun_queue; int /*<<< orphan*/  ctl_lock; } ;
struct ctl_be_lun {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ctl_be_lun*,int /*<<< orphan*/ ) ; 
 struct ctl_softc* control_softc ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct ctl_be_lun *be_lun)
{
	struct ctl_softc *softc = control_softc;

	FUNC1(&softc->ctl_lock);
	FUNC0(&softc->pending_lun_queue, be_lun, links);
	FUNC2(&softc->ctl_lock);
	FUNC3(&softc->pending_lun_queue);

	return (0);
}