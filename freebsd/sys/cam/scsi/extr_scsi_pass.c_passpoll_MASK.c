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
struct thread {int dummy; } ;
struct pass_softc {int /*<<< orphan*/  read_select; int /*<<< orphan*/  done_queue; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int poll_events, struct thread *td)
{
	struct cam_periph *periph;
	struct pass_softc *softc;
	int revents;

	periph = (struct cam_periph *)dev->si_drv1;
	softc = (struct pass_softc *)periph->softc;

	revents = poll_events & (POLLOUT | POLLWRNORM);
	if ((poll_events & (POLLIN | POLLRDNORM)) != 0) {
		FUNC1(periph);

		if (!FUNC0(&softc->done_queue)) {
			revents |= poll_events & (POLLIN | POLLRDNORM);
		}
		FUNC2(periph);
		if (revents == 0)
			FUNC3(td, &softc->read_select);
	}

	return (revents);
}