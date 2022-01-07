
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct resource_list {int dummy; } ;
struct acpi_softc {int acpi_resources_reserved; } ;
struct acpi_device {int ad_handle; struct resource_list ad_rl; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
struct TYPE_4__ {int Flags; } ;
typedef TYPE_1__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int ACPI_PCI_ROOT_BRIDGE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiGetObjectInfo (int ,TYPE_1__**) ;
 int AcpiOsFree (TYPE_1__*) ;
 scalar_t__ CONF1_ADDR_PORT ;
 int EBUSY ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int acpi_get_handle (int ) ;
 scalar_t__ acpi_map_intr (int ,int ,int ) ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 struct acpi_device* device_get_ivars (int ) ;
 struct acpi_softc* device_get_softc (int ) ;
 int pcilink_ids ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ resource_list_busy (struct resource_list*,int,int) ;
 int resource_list_reserve (struct resource_list*,int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ resource_list_reserved (struct resource_list*,int,int) ;
 int resource_list_unreserve (struct resource_list*,int ,int ,int,int) ;
 int sysres_ids ;

__attribute__((used)) static int
acpi_set_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
    struct acpi_softc *sc = device_get_softc(dev);
    struct acpi_device *ad = device_get_ivars(child);
    struct resource_list *rl = &ad->ad_rl;
    ACPI_DEVICE_INFO *devinfo;
    rman_res_t end;
    int allow;


    if (type == SYS_RES_IRQ &&
 ACPI_ID_PROBE(dev, child, pcilink_ids, ((void*)0)) <= 0)
 return (0);
    if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
 if (ACPI_SUCCESS(AcpiGetObjectInfo(ad->ad_handle, &devinfo))) {
     if ((devinfo->Flags & ACPI_PCI_ROOT_BRIDGE) != 0) {

  allow = (type == SYS_RES_IOPORT && start == CONF1_ADDR_PORT);



  if (!allow) {
      AcpiOsFree(devinfo);
      return (0);
  }
     }
     AcpiOsFree(devinfo);
 }
    }
    if (resource_list_busy(rl, type, rid))
 return (EBUSY);


    if (resource_list_reserved(rl, type, rid))
 resource_list_unreserve(rl, dev, child, type, rid);


    end = (start + count - 1);
    resource_list_add(rl, type, rid, start, end, count);


    if (!sc->acpi_resources_reserved)
 return (0);


    if (ACPI_ID_PROBE(dev, child, sysres_ids, ((void*)0)) <= 0)
 return (0);






    if (type == SYS_RES_IRQ)
 return (0);






    if (device_get_devclass(child) == devclass_find("cpu"))
 return (0);







    resource_list_reserve(rl, dev, child, type, &rid, start, end, count, 0);
    return (0);
}
