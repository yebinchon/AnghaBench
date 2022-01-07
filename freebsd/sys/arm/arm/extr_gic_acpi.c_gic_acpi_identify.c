
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
struct madt_table_data {TYPE_2__* dist; TYPE_4__** intr; int * parent; } ;
typedef int madt_data ;
typedef int driver_t ;
typedef int * device_t ;
struct TYPE_11__ {scalar_t__ BaseAddress; } ;
struct TYPE_8__ {int Length; } ;
struct TYPE_10__ {TYPE_1__ Header; } ;
struct TYPE_9__ {int Version; scalar_t__ BaseAddress; } ;
typedef TYPE_3__ ACPI_TABLE_MADT ;
typedef TYPE_4__ ACPI_MADT_GENERIC_INTERRUPT ;





 int ACPI_SIG_MADT ;
 int * BUS_ADD_CHILD (int *,scalar_t__,char*,int) ;
 scalar_t__ BUS_PASS_INTERRUPT ;
 scalar_t__ BUS_PASS_ORDER_MIDDLE ;
 int BUS_SET_RESOURCE (int *,int *,int ,int,scalar_t__,int) ;
 int MAXCPU ;
 int SYS_RES_MEMORY ;
 scalar_t__ acpi_find_table (int ) ;
 TYPE_3__* acpi_map_table (scalar_t__,int ) ;
 int acpi_set_private (int *,void*) ;
 int acpi_unmap_table (TYPE_3__*) ;
 int acpi_walk_subtables (TYPE_3__*,char*,int ,struct madt_table_data*) ;
 int bzero (struct madt_table_data*,int) ;
 int device_printf (int *,char*) ;
 int madt_handler ;

__attribute__((used)) static void
gic_acpi_identify(driver_t *driver, device_t parent)
{
 struct madt_table_data madt_data;
 ACPI_MADT_GENERIC_INTERRUPT *intr;
 ACPI_TABLE_MADT *madt;
 vm_paddr_t physaddr;
 device_t dev;
 int i;

 physaddr = acpi_find_table(ACPI_SIG_MADT);
 if (physaddr == 0)
  return;

 madt = acpi_map_table(physaddr, ACPI_SIG_MADT);
 if (madt == ((void*)0)) {
  device_printf(parent, "gic: Unable to map the MADT\n");
  return;
 }

 bzero(&madt_data, sizeof(madt_data));
 madt_data.parent = parent;
 madt_data.dist = ((void*)0);

 acpi_walk_subtables(madt + 1, (char *)madt + madt->Header.Length,
     madt_handler, &madt_data);


 switch (madt_data.dist->Version) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  goto out;
 }

 intr = ((void*)0);
 for (i = 0; i < MAXCPU; i++) {
  if (madt_data.intr[i] != ((void*)0)) {
   if (intr == ((void*)0)) {
    intr = madt_data.intr[i];
   } else if (intr->BaseAddress !=
       madt_data.intr[i]->BaseAddress) {
    device_printf(parent,
"gic: Not all CPU interfaces at the same address, this may fail\n");
   }
  }
 }
 if (intr == ((void*)0)) {
  device_printf(parent, "gic: No CPU interfaces found\n");
  goto out;
 }

 dev = BUS_ADD_CHILD(parent, BUS_PASS_INTERRUPT + BUS_PASS_ORDER_MIDDLE,
     "gic", -1);
 if (dev == ((void*)0)) {
  device_printf(parent, "add gic child failed\n");
  goto out;
 }

 BUS_SET_RESOURCE(parent, dev, SYS_RES_MEMORY, 0,
     madt_data.dist->BaseAddress, 4 * 1024);
 BUS_SET_RESOURCE(parent, dev, SYS_RES_MEMORY, 1,
     intr->BaseAddress, 4 * 1024);

 acpi_set_private(dev, (void *)(uintptr_t)madt_data.dist->Version);
out:
 acpi_unmap_table(madt);
}
