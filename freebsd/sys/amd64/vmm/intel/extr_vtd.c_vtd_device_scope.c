
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct vtdmap {int dummy; } ;
struct TYPE_9__ {int Length; int EntryType; scalar_t__ Bus; } ;
struct TYPE_6__ {int Length; } ;
struct TYPE_8__ {TYPE_1__ Header; int Flags; } ;
struct TYPE_7__ {scalar_t__ Device; scalar_t__ Function; } ;
typedef TYPE_2__ ACPI_DMAR_PCI_PATH ;
typedef TYPE_3__ ACPI_DMAR_HARDWARE_UNIT ;
typedef TYPE_4__ ACPI_DMAR_DEVICE_SCOPE ;


 scalar_t__ PCI_RID2BUS (int ) ;
 scalar_t__ PCI_RID2FUNC (int ) ;
 scalar_t__ PCI_RID2SLOT (int ) ;
 scalar_t__ VTD_DRHD_INCLUDE_PCI_ALL (int ) ;
 int drhd_num ;
 TYPE_3__** drhds ;
 struct vtdmap** vtdmaps ;

__attribute__((used)) static struct vtdmap *
vtd_device_scope(uint16_t rid)
{
 int i, remaining, pathremaining;
 char *end, *pathend;
 struct vtdmap *vtdmap;
 ACPI_DMAR_HARDWARE_UNIT *drhd;
 ACPI_DMAR_DEVICE_SCOPE *device_scope;
 ACPI_DMAR_PCI_PATH *path;

 for (i = 0; i < drhd_num; i++) {
  drhd = drhds[i];

  if (VTD_DRHD_INCLUDE_PCI_ALL(drhd->Flags)) {






   vtdmap = vtdmaps[i];
   return(vtdmap);
  }

  end = (char *)drhd + drhd->Header.Length;
  remaining = drhd->Header.Length - sizeof(ACPI_DMAR_HARDWARE_UNIT);
  while (remaining > sizeof(ACPI_DMAR_DEVICE_SCOPE)) {
   device_scope = (ACPI_DMAR_DEVICE_SCOPE *)(end - remaining);
   remaining -= device_scope->Length;

   switch (device_scope->EntryType){

    case 0x01:
    case 0x02:
     break;
    default:
     continue;
   }

   if (PCI_RID2BUS(rid) != device_scope->Bus)
    continue;

   pathend = (char *)device_scope + device_scope->Length;
   pathremaining = device_scope->Length - sizeof(ACPI_DMAR_DEVICE_SCOPE);
   while (pathremaining >= sizeof(ACPI_DMAR_PCI_PATH)) {
    path = (ACPI_DMAR_PCI_PATH *)(pathend - pathremaining);
    pathremaining -= sizeof(ACPI_DMAR_PCI_PATH);

    if (PCI_RID2SLOT(rid) != path->Device)
     continue;
    if (PCI_RID2FUNC(rid) != path->Function)
     continue;

    vtdmap = vtdmaps[i];
    return (vtdmap);
   }
  }
 }


 return (((void*)0));
}
