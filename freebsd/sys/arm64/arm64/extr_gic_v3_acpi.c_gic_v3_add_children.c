
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct gic_v3_softc {int gic_nchildren; } ;
struct TYPE_5__ {int gic_domain; int msi_xref; } ;
struct gic_v3_acpi_devinfo {TYPE_1__ di_gic_dinfo; int di_rl; } ;
typedef int * device_t ;
struct TYPE_7__ {int TranslationId; scalar_t__ BaseAddress; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef TYPE_2__ ACPI_SUBTABLE_HEADER ;
typedef TYPE_3__ ACPI_MADT_GENERIC_TRANSLATOR ;


 scalar_t__ ACPI_MADT_TYPE_GENERIC_TRANSLATOR ;
 int ACPI_MSI_XREF ;
 int M_GIC_V3 ;
 int M_WAITOK ;
 int M_ZERO ;
 int SYS_RES_MEMORY ;
 int acpi_iort_its_lookup (int ,int *,int*) ;
 int * device_add_child (int *,char*,int) ;
 struct gic_v3_softc* device_get_softc (int *) ;
 int device_set_ivars (int *,struct gic_v3_acpi_devinfo*) ;
 struct gic_v3_acpi_devinfo* malloc (int,int ,int) ;
 int resource_list_add (int *,int ,int ,scalar_t__,scalar_t__,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static void
gic_v3_add_children(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 ACPI_MADT_GENERIC_TRANSLATOR *gict;
 struct gic_v3_acpi_devinfo *di;
 struct gic_v3_softc *sc;
 device_t child, dev;
 u_int xref;
 int err, pxm;

 if (entry->Type == ACPI_MADT_TYPE_GENERIC_TRANSLATOR) {

  gict = (ACPI_MADT_GENERIC_TRANSLATOR *)entry;
  dev = arg;
  sc = device_get_softc(dev);

  child = device_add_child(dev, "its", -1);
  if (child == ((void*)0))
   return;

  di = malloc(sizeof(*di), M_GIC_V3, M_WAITOK | M_ZERO);
  resource_list_init(&di->di_rl);
  resource_list_add(&di->di_rl, SYS_RES_MEMORY, 0,
      gict->BaseAddress, gict->BaseAddress + 128 * 1024 - 1,
      128 * 1024);
  err = acpi_iort_its_lookup(gict->TranslationId, &xref, &pxm);
  if (err == 0) {
   di->di_gic_dinfo.gic_domain = pxm;
   di->di_gic_dinfo.msi_xref = xref;
  } else {
   di->di_gic_dinfo.gic_domain = -1;
   di->di_gic_dinfo.msi_xref = ACPI_MSI_XREF;
  }
  sc->gic_nchildren++;
  device_set_ivars(child, di);
 }
}
