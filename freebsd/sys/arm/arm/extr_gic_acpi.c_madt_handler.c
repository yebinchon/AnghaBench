
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct madt_table_data {TYPE_2__** intr; int * dist; int parent; } ;
struct TYPE_5__ {size_t CpuInterfaceNumber; } ;
struct TYPE_4__ {int Type; } ;
typedef TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef TYPE_2__ ACPI_MADT_GENERIC_INTERRUPT ;
typedef int ACPI_MADT_GENERIC_DISTRIBUTOR ;




 size_t MAXCPU ;
 int bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
madt_handler(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 struct madt_table_data *madt_data;
 ACPI_MADT_GENERIC_INTERRUPT *intr;

 madt_data = (struct madt_table_data *)arg;

 switch(entry->Type) {
 case 129:
  if (madt_data->dist != ((void*)0)) {
   if (bootverbose)
    device_printf(madt_data->parent,
        "gic: Already have a distributor table");
  } else
   madt_data->dist =
       (ACPI_MADT_GENERIC_DISTRIBUTOR *)entry;
  break;
 case 128:
  intr = (ACPI_MADT_GENERIC_INTERRUPT *)entry;
  if (intr->CpuInterfaceNumber < MAXCPU)
   madt_data->intr[intr->CpuInterfaceNumber] = intr;
  break;
 }
}
