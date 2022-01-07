
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiUtDeleteAddressLists () ;
 int AcpiUtFreeGpeLists () ;
 int UtTerminate ;
 int return_VOID ;

__attribute__((used)) static void
AcpiUtTerminate (
    void)
{
    ACPI_FUNCTION_TRACE (UtTerminate);

    AcpiUtFreeGpeLists ();
    AcpiUtDeleteAddressLists ();
    return_VOID;
}
