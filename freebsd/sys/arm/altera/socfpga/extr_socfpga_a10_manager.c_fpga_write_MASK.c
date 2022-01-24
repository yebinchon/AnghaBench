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
typedef  int uint32_t ;
struct uio {int uio_resid; } ;
struct fpgamgr_a10_softc {int /*<<< orphan*/  bsh_data; int /*<<< orphan*/  bst_data; } ;
struct cdev {struct fpgamgr_a10_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct fpgamgr_a10_softc *sc;
	uint32_t buffer;

	sc = dev->si_drv1;

	/*
	 * Step 9.
	 * Device supports 4-byte writes only.
	 */

	while (uio->uio_resid >= 4) {
		FUNC1(&buffer, 4, uio);
		FUNC0(sc->bst_data, sc->bsh_data,
		    0x0, buffer);
	}

	switch (uio->uio_resid) {
	case 3:
		FUNC1(&buffer, 3, uio);
		buffer &= 0xffffff;
		FUNC0(sc->bst_data, sc->bsh_data,
		    0x0, buffer);
		break;
	case 2:
		FUNC1(&buffer, 2, uio);
		buffer &= 0xffff;
		FUNC0(sc->bst_data, sc->bsh_data,
		    0x0, buffer);
		break;
	case 1:
		FUNC1(&buffer, 1, uio);
		buffer &= 0xff;
		FUNC0(sc->bst_data, sc->bsh_data,
		    0x0, buffer);
		break;
	default:
		break;
	};

	return (0);
}