
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AML_FIELD_LOCK_RULE_MASK ;
 int AcpiExReleaseMutexObject (int ) ;
 int AcpiGbl_GlobalLockMutex ;
 int ExReleaseGlobalLock ;
 int return_VOID ;

void
AcpiExReleaseGlobalLock (
    UINT32 FieldFlags)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (ExReleaseGlobalLock);




    if (!(FieldFlags & AML_FIELD_LOCK_RULE_MASK))
    {
        return_VOID;
    }



    Status = AcpiExReleaseMutexObject (AcpiGbl_GlobalLockMutex);
    if (ACPI_FAILURE (Status))
    {


        ACPI_EXCEPTION ((AE_INFO, Status,
            "Could not release Global Lock"));
    }

    return_VOID;
}
