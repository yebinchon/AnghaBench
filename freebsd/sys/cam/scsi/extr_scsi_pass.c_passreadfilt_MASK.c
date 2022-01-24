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
struct pass_softc {int /*<<< orphan*/  done_queue; } ;
struct knote {scalar_t__ kn_hook; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, long hint)
{
	struct cam_periph *periph;
	struct pass_softc *softc;
	int retval;

	periph = (struct cam_periph *)kn->kn_hook;
	softc = (struct pass_softc *)periph->softc;

	FUNC1(periph, MA_OWNED);

	if (FUNC0(&softc->done_queue))
		retval = 0;
	else
		retval = 1;

	return (retval);
}