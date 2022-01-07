
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int NumSegments; char* InternalName; char* NextExternalChar; int NumCarats; scalar_t__ FullyQualified; } ;
typedef int ACPI_STATUS ;
typedef size_t ACPI_SIZE ;
typedef TYPE_1__ ACPI_NAMESTRING_INFO ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_IS_PATH_SEPARATOR (char const) ;
 int ACPI_NAMESEG_SIZE ;
 int AE_BAD_PATHNAME ;
 int AE_OK ;
 char AML_DUAL_NAME_PREFIX ;
 char AML_MULTI_NAME_PREFIX ;
 char AML_PARENT_PREFIX ;
 char AML_ROOT_PREFIX ;
 int NsBuildInternalName ;
 int return_ACPI_STATUS (int ) ;
 scalar_t__ toupper (int) ;

ACPI_STATUS
AcpiNsBuildInternalName (
    ACPI_NAMESTRING_INFO *Info)
{
    UINT32 NumSegments = Info->NumSegments;
    char *InternalName = Info->InternalName;
    const char *ExternalName = Info->NextExternalChar;
    char *Result = ((void*)0);
    UINT32 i;


    ACPI_FUNCTION_TRACE (NsBuildInternalName);




    if (Info->FullyQualified)
    {
        InternalName[0] = AML_ROOT_PREFIX;

        if (NumSegments <= 1)
        {
            Result = &InternalName[1];
        }
        else if (NumSegments == 2)
        {
            InternalName[1] = AML_DUAL_NAME_PREFIX;
            Result = &InternalName[2];
        }
        else
        {
            InternalName[1] = AML_MULTI_NAME_PREFIX;
            InternalName[2] = (char) NumSegments;
            Result = &InternalName[3];
        }
    }
    else
    {




        i = 0;
        if (Info->NumCarats)
        {
            for (i = 0; i < Info->NumCarats; i++)
            {
                InternalName[i] = AML_PARENT_PREFIX;
            }
        }

        if (NumSegments <= 1)
        {
            Result = &InternalName[i];
        }
        else if (NumSegments == 2)
        {
            InternalName[i] = AML_DUAL_NAME_PREFIX;
            Result = &InternalName[(ACPI_SIZE) i+1];
        }
        else
        {
            InternalName[i] = AML_MULTI_NAME_PREFIX;
            InternalName[(ACPI_SIZE) i+1] = (char) NumSegments;
            Result = &InternalName[(ACPI_SIZE) i+2];
        }
    }



    for (; NumSegments; NumSegments--)
    {
        for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
        {
            if (ACPI_IS_PATH_SEPARATOR (*ExternalName) ||
               (*ExternalName == 0))
            {


                Result[i] = '_';
            }
            else
            {


                Result[i] = (char) toupper ((int) *ExternalName);
                ExternalName++;
            }
        }



        if (!ACPI_IS_PATH_SEPARATOR (*ExternalName) &&
            (*ExternalName != 0))
        {
            return_ACPI_STATUS (AE_BAD_PATHNAME);
        }



        ExternalName++;
        Result += ACPI_NAMESEG_SIZE;
    }



    *Result = 0;

    if (Info->FullyQualified)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Returning [%p] (abs) \"\\%s\"\n",
            InternalName, InternalName));
    }
    else
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Returning [%p] (rel) \"%s\"\n",
            InternalName, InternalName));
    }

    return_ACPI_STATUS (AE_OK);
}
