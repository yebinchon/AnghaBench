#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t UINT8 ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_SIZE ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_BAD_PATHNAME ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_DUAL_NAME_PREFIX 131 
#define  AML_MULTI_NAME_PREFIX 130 
#define  AML_PARENT_PREFIX 129 
#define  AML_ROOT_PREFIX 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  NsExternalizeName ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    UINT32                  InternalNameLength,
    const char              *InternalName,
    UINT32                  *ConvertedNameLength,
    char                    **ConvertedName)
{
    UINT32                  NamesIndex = 0;
    UINT32                  NumSegments = 0;
    UINT32                  RequiredLength;
    UINT32                  PrefixLength = 0;
    UINT32                  i = 0;
    UINT32                  j = 0;


    FUNC3 (NsExternalizeName);


    if (!InternalNameLength     ||
        !InternalName           ||
        !ConvertedName)
    {
        FUNC6 (AE_BAD_PARAMETER);
    }

    /* Check for a prefix (one '\' | one or more '^') */

    switch (InternalName[0])
    {
    case AML_ROOT_PREFIX:

        PrefixLength = 1;
        break;

    case AML_PARENT_PREFIX:

        for (i = 0; i < InternalNameLength; i++)
        {
            if (FUNC4 (InternalName[i]))
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

    /*
     * Check for object names. Note that there could be 0-255 of these
     * 4-byte elements.
     */
    if (PrefixLength < InternalNameLength)
    {
        switch (InternalName[PrefixLength])
        {
        case AML_MULTI_NAME_PREFIX:

            /* <count> 4-byte names */

            NamesIndex = PrefixLength + 2;
            NumSegments = (UINT8)
                InternalName[(ACPI_SIZE) PrefixLength + 1];
            break;

        case AML_DUAL_NAME_PREFIX:

            /* Two 4-byte names */

            NamesIndex = PrefixLength + 1;
            NumSegments = 2;
            break;

        case 0:

            /* NullName */

            NamesIndex = 0;
            NumSegments = 0;
            break;

        default:

            /* one 4-byte name */

            NamesIndex = PrefixLength;
            NumSegments = 1;
            break;
        }
    }

    /*
     * Calculate the length of ConvertedName, which equals the length
     * of the prefix, length of all object names, length of any required
     * punctuation ('.') between object names, plus the NULL terminator.
     */
    RequiredLength = PrefixLength + (4 * NumSegments) +
        ((NumSegments > 0) ? (NumSegments - 1) : 0) + 1;

    /*
     * Check to see if we're still in bounds. If not, there's a problem
     * with InternalName (invalid format).
     */
    if (RequiredLength > InternalNameLength)
    {
        FUNC2 ((AE_INFO, "Invalid internal name"));
        FUNC6 (AE_BAD_PATHNAME);
    }

    /* Build the ConvertedName */

    *ConvertedName = FUNC0 (RequiredLength);
    if (!(*ConvertedName))
    {
        FUNC6 (AE_NO_MEMORY);
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

            /* Copy and validate the 4-char name segment */

            FUNC1 (&(*ConvertedName)[j],
                &InternalName[NamesIndex]);
            FUNC5 (&(*ConvertedName)[j]);

            j += ACPI_NAMESEG_SIZE;
            NamesIndex += ACPI_NAMESEG_SIZE;
        }
    }

    if (ConvertedNameLength)
    {
        *ConvertedNameLength = (UINT32) RequiredLength;
    }

    FUNC6 (AE_OK);
}