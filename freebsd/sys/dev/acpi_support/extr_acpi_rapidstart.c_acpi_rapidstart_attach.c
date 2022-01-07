
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_rapidstart_softc {int sysctl_tree; int sysctl_ctx; } ;
typedef int device_t ;
struct TYPE_2__ {int comment; int * nodename; int * setmethod; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int SYSCTL_ADD_PROC (int ,int ,int,int *,int,int ,int,int ,char*,int ) ;
 int SYSCTL_CHILDREN (int ) ;
 TYPE_1__* acpi_rapidstart_oids ;
 struct acpi_rapidstart_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int sysctl_acpi_rapidstart_gen_handler ;

__attribute__((used)) static int
acpi_rapidstart_attach(device_t dev)
{
 struct acpi_rapidstart_softc *sc;
 int i;

 sc = device_get_softc(dev);

 sc->sysctl_ctx = device_get_sysctl_ctx(dev);
 sc->sysctl_tree = device_get_sysctl_tree(dev);
 for (i = 0 ; acpi_rapidstart_oids[i].nodename != ((void*)0); i++){
  if (acpi_rapidstart_oids[i].setmethod != ((void*)0)) {
   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       i, acpi_rapidstart_oids[i].nodename,
       CTLTYPE_INT | CTLFLAG_RW,
       dev, i, sysctl_acpi_rapidstart_gen_handler, "I",
       acpi_rapidstart_oids[i].comment);
  } else {
   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       i, acpi_rapidstart_oids[i].nodename,
       CTLTYPE_INT | CTLFLAG_RD,
       dev, i, sysctl_acpi_rapidstart_gen_handler, "I",
       acpi_rapidstart_oids[i].comment);
  }
 }
 return (0);
}
