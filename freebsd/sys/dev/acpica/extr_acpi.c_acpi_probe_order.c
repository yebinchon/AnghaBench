
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_TYPE_PROCESSOR ;
 int AcpiGetType (int ,scalar_t__*) ;
 scalar_t__ acpi_MatchHid (int ,char*) ;

__attribute__((used)) static void
acpi_probe_order(ACPI_HANDLE handle, int *order)
{
 ACPI_OBJECT_TYPE type;
 AcpiGetType(handle, &type);
 if (type == ACPI_TYPE_PROCESSOR)
  *order = 0;
 else if (acpi_MatchHid(handle, "PNP0C01") ||
     acpi_MatchHid(handle, "PNP0C02"))
  *order = 1;
 else if (acpi_MatchHid(handle, "PNP0100") ||
     acpi_MatchHid(handle, "PNP0103") ||
     acpi_MatchHid(handle, "PNP0B00"))
  *order = 2;
 else if (acpi_MatchHid(handle, "PNP0C09"))
  *order = 3;
 else if (acpi_MatchHid(handle, "PNP0C0F"))
  *order = 4;
}
