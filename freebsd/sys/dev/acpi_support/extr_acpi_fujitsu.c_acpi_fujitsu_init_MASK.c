#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; } ;
struct TYPE_20__ {char* name; int exists; } ;
struct TYPE_19__ {char* name; int exists; } ;
struct TYPE_18__ {char* name; int exists; } ;
struct TYPE_17__ {char* name; int exists; } ;
struct TYPE_16__ {char* name; int exists; } ;
struct TYPE_15__ {char* name; int exists; } ;
struct TYPE_14__ {char* name; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {char* name; } ;
struct acpi_fujitsu_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  sysctl_tree; int /*<<< orphan*/  sysctl_ctx; TYPE_9__ rbll; TYPE_8__ rvol; TYPE_7__ gvol; TYPE_6__ gbls; TYPE_5__ gbll; TYPE_4__ gmou; TYPE_3__ gsif; TYPE_2__ ghks; TYPE_1__ _sta; } ;
struct TYPE_11__ {int method; int /*<<< orphan*/  description; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CTLFLAG_ANYBODY ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FALSE ; 
#define  METHOD_GBLL 134 
#define  METHOD_GBLS 133 
#define  METHOD_GMOU 132 
#define  METHOD_GVOL 131 
#define  METHOD_MUTE 130 
#define  METHOD_RBLL 129 
#define  METHOD_RVOL 128 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct acpi_fujitsu_softc*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct acpi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_fujitsu_softc*) ; 
 int /*<<< orphan*/  acpi_fujitsu_sysctl ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_fujitsu_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fujitsu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_10__* sysctl_table ; 

__attribute__((used)) static uint8_t
FUNC9(struct acpi_fujitsu_softc *sc)
{
	struct acpi_softc *acpi_sc;
	int i, exists;

	FUNC0(fujitsu);

	/* Setup all of the names for each control method */
	sc->_sta.name = "_STA";
	sc->gbll.name = "GBLL";
	sc->gbls.name = "GBLS";
	sc->ghks.name = "GHKS";
	sc->gmou.name = "GMOU";
	sc->gsif.name = "GSIF";
	sc->gvol.name = "GVOL";
	sc->ghks.name = "GHKS";
	sc->gsif.name = "GSIF";
	sc->rbll.name = "RBLL";
	sc->rvol.name = "RVOL";

	/* Determine what hardware functionality is available */
	FUNC5(sc);

	/* Build the sysctl tree */
	acpi_sc = FUNC4(sc->dev);
	FUNC8(&sc->sysctl_ctx);
	sc->sysctl_tree = FUNC1(&sc->sysctl_ctx,
	    FUNC3(acpi_sc->acpi_sysctl_tree),
	    OID_AUTO, "fujitsu", CTLFLAG_RD, 0, "");

	for (i = 0; sysctl_table[i].name != NULL; i++) {
		switch(sysctl_table[i].method) {
			case METHOD_GMOU:
				exists = sc->gmou.exists;
				break;
			case METHOD_GBLL:
				exists = sc->gbll.exists;
				break;
			case METHOD_GBLS:
				exists = sc->gbls.exists;
				break;
			case METHOD_GVOL:
			case METHOD_MUTE:
				exists = sc->gvol.exists;
				break;
			case METHOD_RVOL:
				exists = sc->rvol.exists;
				break;
			case METHOD_RBLL:
				exists = sc->rbll.exists;
				break;
			default:
				/* Allow by default */
				exists = 1;
				break;
		}
		if(!exists)
			continue;
		FUNC2(&sc->sysctl_ctx,
		    FUNC3(sc->sysctl_tree), OID_AUTO,
		    sysctl_table[i].name,
		    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
		    sc, i, acpi_fujitsu_sysctl, "I",
		    sysctl_table[i].description);
	}


	/* Set the hotkeys to their initial states */
	if (!FUNC6(sc)) {
		FUNC7(sc->dev, "Couldn't init hotkey states\n");
		return (FALSE);
	}

	return (TRUE);
}