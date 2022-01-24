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
struct TYPE_2__ {int /*<<< orphan*/  fb_size; int /*<<< orphan*/  fb_vbase; } ;
struct aml8726_fb_softc {TYPE_1__ info; int /*<<< orphan*/ * res; int /*<<< orphan*/  ih_cookie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_fb_softc*) ; 
 int /*<<< orphan*/  aml8726_fb_spec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_fb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct aml8726_fb_softc *sc = FUNC4(dev);

	FUNC1(dev);

	FUNC3(dev, sc->res[3], sc->ih_cookie);

	FUNC0(sc);

	FUNC2(dev, aml8726_fb_spec, sc->res);

	FUNC5(sc->info.fb_vbase, sc->info.fb_size);

	return (0);
}