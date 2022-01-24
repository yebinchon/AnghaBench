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
struct ctl_softc {int /*<<< orphan*/  ctl_lock; int /*<<< orphan*/  num_frontends; int /*<<< orphan*/  fe_list; } ;
struct ctl_frontend {int (* shutdown ) () ;char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ctl_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ctl_softc* control_softc ; 
 int /*<<< orphan*/  ctl_frontend ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 () ; 

int
FUNC5(struct ctl_frontend *fe)
{
	struct ctl_softc *softc = control_softc;
	int error;

	/* Call the frontend's shutdown routine.*/
	if (fe->shutdown != NULL) {
		if ((error = fe->shutdown()) != 0) {
			FUNC3("%s frontend shutdown error: %d\n",
			    fe->name, error);
			return (error);
		}
	}

	FUNC1(&softc->ctl_lock);
	FUNC0(&softc->fe_list, fe, ctl_frontend, links);
	softc->num_frontends--;
	FUNC2(&softc->ctl_lock);
	return (0);
}