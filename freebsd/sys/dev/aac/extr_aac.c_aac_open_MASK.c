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
struct cdev {struct aac_softc* si_drv1; } ;
struct aac_softc {int /*<<< orphan*/  aac_dev; } ;

/* Variables and functions */
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  aac_cdevpriv_dtor ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct aac_softc *sc;

	sc = dev->si_drv1;
	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC1(sc->aac_dev);
	FUNC0(sc, aac_cdevpriv_dtor);

	return 0;
}