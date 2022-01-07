
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int Flags; } ;
struct TYPE_7__ {int Revision; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_TABLE_FADT ;


 int ACPI_BIOS_WARNING (int ) ;
 int ACPI_FADT_CONFORMANCE ;
 int ACPI_FADT_HW_REDUCED ;
 int ACPI_MIN (int,int) ;
 int AE_INFO ;
 TYPE_2__ AcpiGbl_FADT ;
 int AcpiGbl_ReducedHardware ;
 int AcpiTbConvertFadt () ;
 int AcpiTbSetupFadtRegisters () ;
 int FALSE ;
 int TRUE ;
 int memcpy (TYPE_2__*,TYPE_1__*,int ) ;
 int memset (TYPE_2__*,int ,int) ;

void
AcpiTbCreateLocalFadt (
    ACPI_TABLE_HEADER *Table,
    UINT32 Length)
{






    if (Length > sizeof (ACPI_TABLE_FADT))
    {
        ACPI_BIOS_WARNING ((AE_INFO,
            "FADT (revision %u) is longer than %s length, "
            "truncating length %u to %u",
            Table->Revision, ACPI_FADT_CONFORMANCE, Length,
            (UINT32) sizeof (ACPI_TABLE_FADT)));
    }



    memset (&AcpiGbl_FADT, 0, sizeof (ACPI_TABLE_FADT));



    memcpy (&AcpiGbl_FADT, Table,
        ACPI_MIN (Length, sizeof (ACPI_TABLE_FADT)));



    AcpiGbl_ReducedHardware = FALSE;
    if (AcpiGbl_FADT.Flags & ACPI_FADT_HW_REDUCED)
    {
        AcpiGbl_ReducedHardware = TRUE;
    }



    AcpiTbConvertFadt ();



    AcpiTbSetupFadtRegisters ();
}
