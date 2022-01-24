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
struct targ_softc {int /*<<< orphan*/  read_select; int /*<<< orphan*/  periph; int /*<<< orphan*/  abort_queue; int /*<<< orphan*/  user_ccb_queue; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int poll_events, struct thread *td)
{
	struct targ_softc *softc;
	int	revents;

	FUNC3((void **)&softc);

	/* Poll for write() is always ok. */
	revents = poll_events & (POLLOUT | POLLWRNORM);
	if ((poll_events & (POLLIN | POLLRDNORM)) != 0) {
		/* Poll for read() depends on user and abort queues. */
		FUNC1(softc->periph);
		if (!FUNC0(&softc->user_ccb_queue) ||
		    !FUNC0(&softc->abort_queue)) {
			revents |= poll_events & (POLLIN | POLLRDNORM);
		}
		FUNC2(softc->periph);
		/* Only sleep if the user didn't poll for write. */
		if (revents == 0)
			FUNC4(td, &softc->read_select);
	}

	return (revents);
}