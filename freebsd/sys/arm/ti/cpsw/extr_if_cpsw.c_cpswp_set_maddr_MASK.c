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
typedef  int uint32_t ;
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct cpswp_softc {int unit; int /*<<< orphan*/  vlan; TYPE_1__* swsc; } ;
struct TYPE_2__ {scalar_t__ dualemac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct cpswp_softc *sc = arg;
	uint32_t portmask;

	if (sc->swsc->dualemac)
		portmask = 1 << (sc->unit + 1) | 1 << 0;
	else
		portmask = 7;

	FUNC1(sc->swsc, portmask, sc->vlan, FUNC0(sdl));

	return (1);
}