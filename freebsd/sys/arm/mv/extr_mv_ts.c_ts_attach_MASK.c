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
struct sysctl_ctx_list {int dummy; } ;
struct mvts_softc {int /*<<< orphan*/  sc_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvts_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mvts_res ; 
 int /*<<< orphan*/  ts_sysctl_handler ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mvts_softc *sc;
	struct sysctl_ctx_list *ctx;
	int error;

	sc = FUNC3(dev);
	sc->sc_dev = dev;
	error = FUNC2(dev, mvts_res, sc->sc_res);
	if (error) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}
	ctx = FUNC4(dev);
	FUNC0(ctx, FUNC1(FUNC5(dev)),
	    OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD, dev,
	    0, ts_sysctl_handler, "IK", "Current Temperature");

	return (0);
}