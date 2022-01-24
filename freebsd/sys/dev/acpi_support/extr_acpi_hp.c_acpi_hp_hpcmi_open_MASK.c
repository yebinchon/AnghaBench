#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_proc; } ;
struct cdev {struct acpi_hp_softc* si_drv1; } ;
struct acpi_hp_softc {scalar_t__ hpcmi_open_pid; scalar_t__ hpcmi_bufptr; int /*<<< orphan*/  hpcmi_sbuf; } ;
struct TYPE_2__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBADF ; 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int /*<<< orphan*/  hp ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cdev* dev, int flags, int mode, struct thread *td)
{
	struct acpi_hp_softc	*sc;
	int			ret;

	if (dev == NULL || dev->si_drv1 == NULL)
		return (EBADF);
	sc = dev->si_drv1;

	FUNC0(hp);
	if (sc->hpcmi_open_pid != 0) {
		ret = EBUSY;
	}
	else {
		if (FUNC2(&sc->hpcmi_sbuf, NULL, 4096, SBUF_AUTOEXTEND)
		    == NULL) {
			ret = ENXIO;
		} else {
			sc->hpcmi_open_pid = td->td_proc->p_pid;
			sc->hpcmi_bufptr = 0;
			ret = 0;
		}
	}
	FUNC1(hp);

	return (ret);
}