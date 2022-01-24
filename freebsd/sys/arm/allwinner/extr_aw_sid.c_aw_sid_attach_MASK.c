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
struct aw_sid_softc {struct aw_sid_conf* sid_conf; int /*<<< orphan*/  prctl_mtx; int /*<<< orphan*/  res; int /*<<< orphan*/  sid_dev; } ;
struct aw_sid_conf {int nfuses; TYPE_1__* efuses; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct aw_sid_softc* aw_sid_sc ; 
 int /*<<< orphan*/  aw_sid_spec ; 
 int /*<<< orphan*/  aw_sid_sysctl ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct aw_sid_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct aw_sid_softc *sc;
	phandle_t node;
	int i;

	node = FUNC11(dev);
	sc = FUNC6(dev);
	sc->sid_dev = dev;

	if (FUNC4(dev, aw_sid_spec, &sc->res) != 0) {
		FUNC9(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC10(&sc->prctl_mtx, FUNC5(dev), NULL, MTX_DEF);
	sc->sid_conf = (struct aw_sid_conf *)FUNC12(dev, compat_data)->ocd_data;
	aw_sid_sc = sc;

	/* Register ourself so device can resolve who we are */
	FUNC0(FUNC1(node), dev);

	for (i = 0; i < sc->sid_conf->nfuses ;i++) {\
		FUNC2(FUNC7(dev),
		    FUNC3(FUNC8(dev)),
		    OID_AUTO, sc->sid_conf->efuses[i].name,
		    CTLTYPE_STRING | CTLFLAG_RD,
		    dev, sc->sid_conf->efuses[i].id, aw_sid_sysctl,
		    "A", sc->sid_conf->efuses[i].desc);
	}
	return (0);
}