
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ BOOLEAN ;
typedef scalar_t__ ACPI_STATUS ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;


 int ACPI_DB_EXEC ;
 int ACPI_DB_LOAD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int*) ;
 int ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ ACPI_TYPE_LOCAL_BANK_FIELD ;
 scalar_t__ ACPI_TYPE_LOCAL_INDEX_FIELD ;
 scalar_t__ ACPI_TYPE_LOCAL_REGION_FIELD ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_AML_BAD_NAME ;
 scalar_t__ AE_CTRL_PENDING ;
 int AE_INFO ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;




 char* AcpiExAllocateNameString (int,int) ;
 scalar_t__ AcpiExNameSegment (int**,char*) ;
 int ExGetNameString ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiExGetNameString (
    ACPI_OBJECT_TYPE DataType,
    UINT8 *InAmlAddress,
    char **OutNameString,
    UINT32 *OutNameLength)
{
    ACPI_STATUS Status = AE_OK;
    UINT8 *AmlAddress = InAmlAddress;
    char *NameString = ((void*)0);
    UINT32 NumSegments;
    UINT32 PrefixCount = 0;
    BOOLEAN HasPrefix = FALSE;


    ACPI_FUNCTION_TRACE_PTR (ExGetNameString, AmlAddress);


    if (ACPI_TYPE_LOCAL_REGION_FIELD == DataType ||
        ACPI_TYPE_LOCAL_BANK_FIELD == DataType ||
        ACPI_TYPE_LOCAL_INDEX_FIELD == DataType)
    {


        NameString = AcpiExAllocateNameString (0, 1);
        if (!NameString)
        {
            Status = AE_NO_MEMORY;
        }
        else
        {
            Status = AcpiExNameSegment (&AmlAddress, NameString);
        }
    }
    else
    {




        switch (*AmlAddress)
        {
        case 128:

            ACPI_DEBUG_PRINT ((ACPI_DB_LOAD, "RootPrefix(\\) at %p\n",
                AmlAddress));





            AmlAddress++;
            PrefixCount = ACPI_UINT32_MAX;
            HasPrefix = TRUE;
            break;

        case 129:



            do
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_LOAD, "ParentPrefix (^) at %p\n",
                    AmlAddress));

                AmlAddress++;
                PrefixCount++;

            } while (*AmlAddress == 129);

            HasPrefix = TRUE;
            break;

        default:



            break;
        }



        switch (*AmlAddress)
        {
        case 131:

            ACPI_DEBUG_PRINT ((ACPI_DB_LOAD, "DualNamePrefix at %p\n",
                AmlAddress));

            AmlAddress++;
            NameString = AcpiExAllocateNameString (PrefixCount, 2);
            if (!NameString)
            {
                Status = AE_NO_MEMORY;
                break;
            }



            HasPrefix = TRUE;

            Status = AcpiExNameSegment (&AmlAddress, NameString);
            if (ACPI_SUCCESS (Status))
            {
                Status = AcpiExNameSegment (&AmlAddress, NameString);
            }
            break;

        case 130:

            ACPI_DEBUG_PRINT ((ACPI_DB_LOAD, "MultiNamePrefix at %p\n",
                AmlAddress));



            AmlAddress++;
            NumSegments = *AmlAddress;

            NameString = AcpiExAllocateNameString (
                PrefixCount, NumSegments);
            if (!NameString)
            {
                Status = AE_NO_MEMORY;
                break;
            }



            AmlAddress++;
            HasPrefix = TRUE;

            while (NumSegments &&
                    (Status = AcpiExNameSegment (&AmlAddress, NameString)) ==
                        AE_OK)
            {
                NumSegments--;
            }

            break;

        case 0:



            if (PrefixCount == ACPI_UINT32_MAX)
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
                    "NameSeg is \"\\\" followed by NULL\n"));
            }



            AmlAddress++;
            NameString = AcpiExAllocateNameString (PrefixCount, 0);
            if (!NameString)
            {
                Status = AE_NO_MEMORY;
                break;
            }

            break;

        default:



            NameString = AcpiExAllocateNameString (PrefixCount, 1);
            if (!NameString)
            {
                Status = AE_NO_MEMORY;
                break;
            }

            Status = AcpiExNameSegment (&AmlAddress, NameString);
            break;
        }
    }

    if (AE_CTRL_PENDING == Status && HasPrefix)
    {


        ACPI_ERROR ((AE_INFO,
            "Malformed Name at %p", NameString));
        Status = AE_AML_BAD_NAME;
    }

    if (ACPI_FAILURE (Status))
    {
        if (NameString)
        {
            ACPI_FREE (NameString);
        }
        return_ACPI_STATUS (Status);
    }

    *OutNameString = NameString;
    *OutNameLength = (UINT32) (AmlAddress - InAmlAddress);

    return_ACPI_STATUS (Status);
}
