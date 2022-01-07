
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Type; int Name; } ;
typedef char* ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PREDEFINED_NAMES ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,char*) ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 char* acpi_osname ;
 int printf (char*,char*) ;
 scalar_t__ strlen (char*) ;

ACPI_STATUS
AcpiOsPredefinedOverride(const ACPI_PREDEFINED_NAMES *InitVal,
    ACPI_STRING *NewVal)
{

 if (InitVal == ((void*)0) || NewVal == ((void*)0))
  return (AE_BAD_PARAMETER);

 *NewVal = ((void*)0);
 if (ACPI_COMPARE_NAMESEG(InitVal->Name, "_OS_") &&
     InitVal->Type == ACPI_TYPE_STRING && strlen(acpi_osname) > 0) {
  printf("ACPI: Overriding _OS definition with \"%s\"\n",
      acpi_osname);
  *NewVal = acpi_osname;
 }
 return (AE_OK);
}
