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
struct targ_softc {int /*<<< orphan*/  periph; int /*<<< orphan*/  abort_queue; int /*<<< orphan*/  user_ccb_queue; } ;
struct knote {scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	struct targ_softc *softc;
	int	retval;

	softc = (struct targ_softc *)kn->kn_hook;
	FUNC1(softc->periph);
	retval = !FUNC0(&softc->user_ccb_queue) ||
		 !FUNC0(&softc->abort_queue);
	FUNC2(softc->periph);
	return (retval);
}