
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gic_acpi_devinfo {int rl; } ;
struct arm_gic_softc {int * gic_dev; } ;
typedef int * device_t ;
struct TYPE_5__ {scalar_t__ BaseAddress; int SpiBase; int SpiCount; int Flags; int MsiFrameId; } ;
struct TYPE_4__ {scalar_t__ Type; } ;
typedef TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef TYPE_2__ ACPI_MADT_GENERIC_MSI_FRAME ;


 scalar_t__ ACPI_MADT_TYPE_GENERIC_MSI_FRAME ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PAGE_SIZE ;
 int SYS_RES_MEMORY ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ,scalar_t__,int ,int ,int ) ;
 int device_set_ivars (int *,struct gic_acpi_devinfo*) ;
 struct gic_acpi_devinfo* malloc (int,int ,int) ;
 int resource_list_add (int *,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int resource_list_init (int *) ;

__attribute__((used)) static void
madt_gicv2m_handler(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 struct arm_gic_softc *sc;
 ACPI_MADT_GENERIC_MSI_FRAME *msi;
 struct gic_acpi_devinfo *dinfo;
 device_t dev, cdev;

 if (entry->Type == ACPI_MADT_TYPE_GENERIC_MSI_FRAME) {
  sc = arg;
  dev = sc->gic_dev;
  msi = (ACPI_MADT_GENERIC_MSI_FRAME *)entry;

  device_printf(dev, "frame: %x %lx %x %u %u\n", msi->MsiFrameId,
      msi->BaseAddress, msi->Flags, msi->SpiCount, msi->SpiBase);

  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0))
   return;

  dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
  resource_list_init(&dinfo->rl);
  resource_list_add(&dinfo->rl, SYS_RES_MEMORY, 0,
      msi->BaseAddress, msi->BaseAddress + PAGE_SIZE - 1,
      PAGE_SIZE);
  device_set_ivars(cdev, dinfo);
 }
}
