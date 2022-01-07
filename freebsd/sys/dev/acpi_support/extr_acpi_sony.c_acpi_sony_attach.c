
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_sony_softc {int pid; } ;
typedef int device_t ;
struct TYPE_2__ {int comment; int * nodename; int * setmethod; } ;


 int ACPI_SONY_GET_PID ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int SYSCTL_ADD_PROC (int ,int ,int,int *,int,int ,int,int ,char*,int ) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_GetInteger (int ,int ,int *) ;
 int acpi_get_handle (int ) ;
 TYPE_1__* acpi_sony_oids ;
 struct acpi_sony_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int ) ;
 int sysctl_acpi_sony_gen_handler ;

__attribute__((used)) static int
acpi_sony_attach(device_t dev)
{
 struct acpi_sony_softc *sc;
 int i;

 sc = device_get_softc(dev);
 acpi_GetInteger(acpi_get_handle(dev), ACPI_SONY_GET_PID, &sc->pid);
 device_printf(dev, "PID %x\n", sc->pid);
 for (i = 0 ; acpi_sony_oids[i].nodename != ((void*)0); i++) {
  if (acpi_sony_oids[i].setmethod != ((void*)0)) {
   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       i, acpi_sony_oids[i].nodename ,
       CTLTYPE_INT | CTLFLAG_RW,
       dev, i, sysctl_acpi_sony_gen_handler, "I",
       acpi_sony_oids[i].comment);
  } else {
   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       i, acpi_sony_oids[i].nodename ,
       CTLTYPE_INT | CTLFLAG_RD,
       dev, i, sysctl_acpi_sony_gen_handler, "I",
       acpi_sony_oids[i].comment);
  }
 }
 return (0);
}
