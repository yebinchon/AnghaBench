
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct madt_table_data {int count; int dev; int parent; } ;
struct TYPE_5__ {int Length; int BaseAddress; } ;
struct TYPE_4__ {int Type; } ;
typedef TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef TYPE_2__ ACPI_MADT_GENERIC_REDISTRIBUTOR ;



 int BUS_SET_RESOURCE (int ,int ,int ,int ,int ,int ) ;
 int SYS_RES_MEMORY ;

__attribute__((used)) static void
rdist_map(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 ACPI_MADT_GENERIC_REDISTRIBUTOR *redist;
 struct madt_table_data *madt_data;

 madt_data = (struct madt_table_data *)arg;

 switch(entry->Type) {
 case 128:
  redist = (ACPI_MADT_GENERIC_REDISTRIBUTOR *)entry;

  madt_data->count++;
  BUS_SET_RESOURCE(madt_data->parent, madt_data->dev,
      SYS_RES_MEMORY, madt_data->count, redist->BaseAddress,
      redist->Length);
  break;

 default:
  break;
 }
}
