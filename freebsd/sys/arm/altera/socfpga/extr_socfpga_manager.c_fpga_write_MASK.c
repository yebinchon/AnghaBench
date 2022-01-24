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
struct uio {scalar_t__ uio_resid; } ;
struct fpgamgr_softc {int /*<<< orphan*/  bsh_data; int /*<<< orphan*/  bst_data; } ;
struct cdev {struct fpgamgr_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct fpgamgr_softc *sc;
	int buffer;

	sc = dev->si_drv1;

	/*
	 * Device supports 4-byte copy only.
	 * TODO: add padding for <4 bytes.
	 */

	while (uio->uio_resid > 0) {
		FUNC1(&buffer, 4, uio);
		FUNC0(sc->bst_data, sc->bsh_data,
		    0x0, buffer);
	}

	return (0);
}