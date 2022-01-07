
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct madt_table_data {int * dist; int parent; } ;
struct TYPE_3__ {int Type; } ;
typedef TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef int ACPI_MADT_GENERIC_DISTRIBUTOR ;




 int bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
madt_handler(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 struct madt_table_data *madt_data;

 madt_data = (struct madt_table_data *)arg;

 switch(entry->Type) {
 case 129:
  if (madt_data->dist != ((void*)0)) {
   if (bootverbose)
    device_printf(madt_data->parent,
        "gic: Already have a distributor table");
   break;
  }
  madt_data->dist = (ACPI_MADT_GENERIC_DISTRIBUTOR *)entry;
  break;

 case 128:
  break;

 default:
  break;
 }
}
