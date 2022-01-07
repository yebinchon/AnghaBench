
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ DeviceId; scalar_t__ Type; } ;
typedef TYPE_1__ ACPI_IVRS_HEADER ;


 scalar_t__ IVRS_TYPE_HARDWARE_EFR ;
 scalar_t__ IVRS_TYPE_HARDWARE_LEGACY ;
 scalar_t__ IVRS_TYPE_HARDWARE_MIXED ;

__attribute__((used)) static bool
ivhd_is_newer(ACPI_IVRS_HEADER *old, ACPI_IVRS_HEADER *new)
{



 if ((old->DeviceId == new->DeviceId) &&
  (old->Type == IVRS_TYPE_HARDWARE_LEGACY) &&
  ((new->Type == IVRS_TYPE_HARDWARE_EFR) ||
  (new->Type == IVRS_TYPE_HARDWARE_MIXED))) {
  return (1);
 }

 return (0);
}
