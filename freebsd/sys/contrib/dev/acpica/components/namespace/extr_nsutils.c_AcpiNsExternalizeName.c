
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef size_t UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 char* ACPI_ALLOCATE_ZEROED (size_t) ;
 int ACPI_COPY_NAMESEG (char*,char const*) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IS_PARENT_PREFIX (char const) ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int AE_BAD_PARAMETER ;
 int AE_BAD_PATHNAME ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;




 int AcpiUtRepairName (char*) ;
 int NsExternalizeName ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsExternalizeName (
    UINT32 InternalNameLength,
    const char *InternalName,
    UINT32 *ConvertedNameLength,
    char **ConvertedName)
{
    UINT32 NamesIndex = 0;
    UINT32 NumSegments = 0;
    UINT32 RequiredLength;
    UINT32 PrefixLength = 0;
    UINT32 i = 0;
    UINT32 j = 0;


    ACPI_FUNCTION_TRACE (NsExternalizeName);


    if (!InternalNameLength ||
        !InternalName ||
        !ConvertedName)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    switch (InternalName[0])
    {
    case 128:

        PrefixLength = 1;
        break;

    case 129:

        for (i = 0; i < InternalNameLength; i++)
        {
            if (ACPI_IS_PARENT_PREFIX (InternalName[i]))
            {
                PrefixLength = i + 1;
            }
            else
            {
                break;
            }
        }

        if (i == InternalNameLength)
        {
            PrefixLength = i;
        }

        break;

    default:

        break;
    }





    if (PrefixLength < InternalNameLength)
    {
        switch (InternalName[PrefixLength])
        {
        case 130:



            NamesIndex = PrefixLength + 2;
            NumSegments = (UINT8)
                InternalName[(ACPI_SIZE) PrefixLength + 1];
            break;

        case 131:



            NamesIndex = PrefixLength + 1;
            NumSegments = 2;
            break;

        case 0:



            NamesIndex = 0;
            NumSegments = 0;
            break;

        default:



            NamesIndex = PrefixLength;
            NumSegments = 1;
            break;
        }
    }






    RequiredLength = PrefixLength + (4 * NumSegments) +
        ((NumSegments > 0) ? (NumSegments - 1) : 0) + 1;





    if (RequiredLength > InternalNameLength)
    {
        ACPI_ERROR ((AE_INFO, "Invalid internal name"));
        return_ACPI_STATUS (AE_BAD_PATHNAME);
    }



    *ConvertedName = ACPI_ALLOCATE_ZEROED (RequiredLength);
    if (!(*ConvertedName))
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    j = 0;

    for (i = 0; i < PrefixLength; i++)
    {
        (*ConvertedName)[j++] = InternalName[i];
    }

    if (NumSegments > 0)
    {
        for (i = 0; i < NumSegments; i++)
        {
            if (i > 0)
            {
                (*ConvertedName)[j++] = '.';
            }



            ACPI_COPY_NAMESEG (&(*ConvertedName)[j],
                &InternalName[NamesIndex]);
            AcpiUtRepairName (&(*ConvertedName)[j]);

            j += ACPI_NAMESEG_SIZE;
            NamesIndex += ACPI_NAMESEG_SIZE;
        }
    }

    if (ConvertedNameLength)
    {
        *ConvertedNameLength = (UINT32) RequiredLength;
    }

    return_ACPI_STATUS (AE_OK);
}
