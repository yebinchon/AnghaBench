#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifnet {struct cpswp_softc* if_softc; } ;
struct cpswp_softc {TYPE_2__* mii; int /*<<< orphan*/  media_status; int /*<<< orphan*/  swsc; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifm_media; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
	struct cpswp_softc *sc;

	sc = ifp->if_softc;
	FUNC0(sc->swsc, (""));
	FUNC1(sc);
	FUNC3(sc->mii);
	sc->media_status = sc->mii->mii_media.ifm_media;
	FUNC2(sc);

	return (0);
}