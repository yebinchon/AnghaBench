
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AML_PARENT_PREFIX ;
 char AML_ROOT_PREFIX ;
 int AcpiDmCreateNewExternal (char*,char*,char,int ,int) ;
 char* AcpiDmNormalizeParentPrefix (int *,char*) ;
 int AcpiNsExternalizeName (int ,char*,int *,char**) ;
 int AcpiNsInternalizeName (char*,char**) ;
 int DmAddOpToExternalList ;
 int return_VOID ;

void
AcpiDmAddOpToExternalList (
    ACPI_PARSE_OBJECT *Op,
    char *Path,
    UINT8 Type,
    UINT32 Value,
    UINT16 Flags)
{
    char *ExternalPath;
    char *InternalPath = Path;
    char *Temp;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DmAddOpToExternalList);


    if (!Path)
    {
        return_VOID;
    }



    if ((*Path == AML_ROOT_PREFIX) && (Path[1]))
    {
        Path++;
    }



    Status = AcpiNsExternalizeName (ACPI_UINT32_MAX, Path,
        ((void*)0), &ExternalPath);
    if (ACPI_FAILURE (Status))
    {
        return_VOID;
    }





    if (*Path == (UINT8) AML_PARENT_PREFIX)
    {
        Temp = AcpiDmNormalizeParentPrefix (Op, ExternalPath);



        ACPI_FREE (ExternalPath);
        ExternalPath = Temp;
        if (!Temp)
        {
            return_VOID;
        }



        Flags |= ACPI_EXT_INTERNAL_PATH_ALLOCATED;
        Status = AcpiNsInternalizeName (ExternalPath, &InternalPath);
        if (ACPI_FAILURE (Status))
        {
            ACPI_FREE (ExternalPath);
            return_VOID;
        }
    }



    Status = AcpiDmCreateNewExternal (ExternalPath, InternalPath,
        Type, Value, Flags);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (ExternalPath);
        if (Flags & ACPI_EXT_INTERNAL_PATH_ALLOCATED)
        {
            ACPI_FREE (InternalPath);
        }
    }

    return_VOID;
}
