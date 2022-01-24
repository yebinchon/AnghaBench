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
struct dpaa_portals_softc {int /*<<< orphan*/ * sc_rres; TYPE_1__* sc_dp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__** portal_ce_pa; void** portal_ci_va; void** portal_ce_va; int /*<<< orphan*/ ** portal_intr; int /*<<< orphan*/ ** portal_ci_size; int /*<<< orphan*/ ** portal_ce_size; int /*<<< orphan*/ ** portal_ci_pa; } ;
struct TYPE_3__ {scalar_t__ dp_ce_pa; int /*<<< orphan*/  dp_intr_num; int /*<<< orphan*/  dp_ci_size; int /*<<< orphan*/  dp_ce_size; int /*<<< orphan*/  dp_ci_pa; } ;

/* Variables and functions */
 int BM_PORTAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int QM_PORTAL ; 
 TYPE_2__ XX_PInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC8(device_t dev)
{
	char *dev_name;
	struct dpaa_portals_softc *sc;
	int i, type, len;

	dev_name = FUNC3(sizeof(*dev_name), M_TEMP, M_WAITOK |
	    M_ZERO);

	len = FUNC5("bman-portals");

	FUNC7(dev_name, FUNC0(dev), len);

	if (FUNC6(dev_name, "bman-portals", len) && FUNC6(dev_name,
	    "qman-portals", len))
		goto end;

	if (FUNC6(dev_name, "bman-portals", len) == 0)
		type = BM_PORTAL;
	else
		type = QM_PORTAL;

	sc = FUNC1(dev);

	for (i = 0; sc->sc_dp[i].dp_ce_pa != 0; i++) {
		XX_PInfo.portal_ce_pa[type][i] = sc->sc_dp[i].dp_ce_pa;
		XX_PInfo.portal_ci_pa[type][i] = sc->sc_dp[i].dp_ci_pa;
		XX_PInfo.portal_ce_size[type][i] = sc->sc_dp[i].dp_ce_size;
		XX_PInfo.portal_ci_size[type][i] = sc->sc_dp[i].dp_ci_size;
		XX_PInfo.portal_intr[type][i] = sc->sc_dp[i].dp_intr_num;
	}

	XX_PInfo.portal_ce_va[type] = FUNC4(sc->sc_rres[0]);
	XX_PInfo.portal_ci_va[type] = FUNC4(sc->sc_rres[1]);
end:
	FUNC2(dev_name, M_TEMP);
}