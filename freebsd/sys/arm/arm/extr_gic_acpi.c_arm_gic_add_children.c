
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
struct arm_gic_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_6__ {int Length; } ;
struct TYPE_7__ {TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_TABLE_MADT ;


 int ACPI_SIG_MADT ;
 scalar_t__ acpi_find_table (int ) ;
 TYPE_2__* acpi_map_table (scalar_t__,int ) ;
 int acpi_unmap_table (TYPE_2__*) ;
 int acpi_walk_subtables (TYPE_2__*,char*,int ,struct arm_gic_softc*) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int madt_gicv2m_handler ;

__attribute__((used)) static bool
arm_gic_add_children(device_t dev)
{
 struct arm_gic_softc *sc = device_get_softc(dev);
 ACPI_TABLE_MADT *madt;
 vm_paddr_t physaddr;


 physaddr = acpi_find_table(ACPI_SIG_MADT);
 if (physaddr == 0)
  return (0);

 madt = acpi_map_table(physaddr, ACPI_SIG_MADT);
 if (madt == ((void*)0)) {
  device_printf(dev, "gic: Unable to map the MADT\n");
  return (0);
 }

 acpi_walk_subtables(madt + 1, (char *)madt + madt->Header.Length,
     madt_gicv2m_handler, sc);

 acpi_unmap_table(madt);

 return (1);
}
