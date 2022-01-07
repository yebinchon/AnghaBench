
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct acpi_softc {int acpi_sysctl_tree; } ;
struct TYPE_20__ {char* name; int exists; } ;
struct TYPE_19__ {char* name; int exists; } ;
struct TYPE_18__ {char* name; int exists; } ;
struct TYPE_17__ {char* name; int exists; } ;
struct TYPE_16__ {char* name; int exists; } ;
struct TYPE_15__ {char* name; int exists; } ;
struct TYPE_14__ {char* name; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {char* name; } ;
struct acpi_fujitsu_softc {int dev; int sysctl_tree; int sysctl_ctx; TYPE_9__ rbll; TYPE_8__ rvol; TYPE_7__ gvol; TYPE_6__ gbls; TYPE_5__ gbll; TYPE_4__ gmou; TYPE_3__ gsif; TYPE_2__ ghks; TYPE_1__ _sta; } ;
struct TYPE_11__ {int method; int description; int * name; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int FALSE ;







 int OID_AUTO ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,int *,int,struct acpi_fujitsu_softc*,int,int ,char*,int ) ;
 int SYSCTL_CHILDREN (int ) ;
 int TRUE ;
 struct acpi_softc* acpi_device_get_parent_softc (int ) ;
 int acpi_fujitsu_check_hardware (struct acpi_fujitsu_softc*) ;
 int acpi_fujitsu_sysctl ;
 int acpi_fujitsu_update (struct acpi_fujitsu_softc*) ;
 int device_printf (int ,char*) ;
 int fujitsu ;
 int sysctl_ctx_init (int *) ;
 TYPE_10__* sysctl_table ;

__attribute__((used)) static uint8_t
acpi_fujitsu_init(struct acpi_fujitsu_softc *sc)
{
 struct acpi_softc *acpi_sc;
 int i, exists;

 ACPI_SERIAL_ASSERT(fujitsu);


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


 acpi_fujitsu_check_hardware(sc);


 acpi_sc = acpi_device_get_parent_softc(sc->dev);
 sysctl_ctx_init(&sc->sysctl_ctx);
 sc->sysctl_tree = SYSCTL_ADD_NODE(&sc->sysctl_ctx,
     SYSCTL_CHILDREN(acpi_sc->acpi_sysctl_tree),
     OID_AUTO, "fujitsu", CTLFLAG_RD, 0, "");

 for (i = 0; sysctl_table[i].name != ((void*)0); i++) {
  switch(sysctl_table[i].method) {
   case 132:
    exists = sc->gmou.exists;
    break;
   case 134:
    exists = sc->gbll.exists;
    break;
   case 133:
    exists = sc->gbls.exists;
    break;
   case 131:
   case 130:
    exists = sc->gvol.exists;
    break;
   case 128:
    exists = sc->rvol.exists;
    break;
   case 129:
    exists = sc->rbll.exists;
    break;
   default:

    exists = 1;
    break;
  }
  if(!exists)
   continue;
  SYSCTL_ADD_PROC(&sc->sysctl_ctx,
      SYSCTL_CHILDREN(sc->sysctl_tree), OID_AUTO,
      sysctl_table[i].name,
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
      sc, i, acpi_fujitsu_sysctl, "I",
      sysctl_table[i].description);
 }



 if (!acpi_fujitsu_update(sc)) {
  device_printf(sc->dev, "Couldn't init hotkey states\n");
  return (FALSE);
 }

 return (TRUE);
}
