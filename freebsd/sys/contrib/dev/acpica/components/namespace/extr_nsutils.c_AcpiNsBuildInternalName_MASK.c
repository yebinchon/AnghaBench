#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_3__ {int NumSegments; char* InternalName; char* NextExternalChar; int NumCarats; scalar_t__ FullyQualified; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  size_t ACPI_SIZE ;
typedef  TYPE_1__ ACPI_NAMESTRING_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const) ; 
 int ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_BAD_PATHNAME ; 
 int /*<<< orphan*/  AE_OK ; 
 char AML_DUAL_NAME_PREFIX ; 
 char AML_MULTI_NAME_PREFIX ; 
 char AML_PARENT_PREFIX ; 
 char AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  NsBuildInternalName ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

ACPI_STATUS
FUNC5 (
    ACPI_NAMESTRING_INFO    *Info)
{
    UINT32                  NumSegments = Info->NumSegments;
    char                    *InternalName = Info->InternalName;
    const char              *ExternalName = Info->NextExternalChar;
    char                    *Result = NULL;
    UINT32                  i;


    FUNC1 (NsBuildInternalName);


    /* Setup the correct prefixes, counts, and pointers */

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
        /*
         * Not fully qualified.
         * Handle Carats first, then append the name segments
         */
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

    /* Build the name (minus path separators) */

    for (; NumSegments; NumSegments--)
    {
        for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
        {
            if (FUNC2 (*ExternalName) ||
               (*ExternalName == 0))
            {
                /* Pad the segment with underscore(s) if segment is short */

                Result[i] = '_';
            }
            else
            {
                /* Convert the character to uppercase and save it */

                Result[i] = (char) FUNC4 ((int) *ExternalName);
                ExternalName++;
            }
        }

        /* Now we must have a path separator, or the pathname is bad */

        if (!FUNC2 (*ExternalName) &&
            (*ExternalName != 0))
        {
            FUNC3 (AE_BAD_PATHNAME);
        }

        /* Move on the next segment */

        ExternalName++;
        Result += ACPI_NAMESEG_SIZE;
    }

    /* Terminate the string */

    *Result = 0;

    if (Info->FullyQualified)
    {
        FUNC0 ((ACPI_DB_EXEC, "Returning [%p] (abs) \"\\%s\"\n",
            InternalName, InternalName));
    }
    else
    {
        FUNC0 ((ACPI_DB_EXEC, "Returning [%p] (rel) \"%s\"\n",
            InternalName, InternalName));
    }

    FUNC3 (AE_OK);
}