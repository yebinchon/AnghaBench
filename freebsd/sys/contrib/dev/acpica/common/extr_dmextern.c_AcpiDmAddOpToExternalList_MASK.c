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
typedef  char UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 scalar_t__ AML_PARENT_PREFIX ; 
 char AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  DmAddOpToExternalList ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC7 (
    ACPI_PARSE_OBJECT       *Op,
    char                    *Path,
    UINT8                   Type,
    UINT32                  Value,
    UINT16                  Flags)
{
    char                    *ExternalPath;
    char                    *InternalPath = Path;
    char                    *Temp;
    ACPI_STATUS             Status;


    FUNC2 (DmAddOpToExternalList);


    if (!Path)
    {
        return_VOID;
    }

    /* Remove a root backslash if present */

    if ((*Path == AML_ROOT_PREFIX) && (Path[1]))
    {
        Path++;
    }

    /* Externalize the pathname */

    Status = FUNC5 (ACPI_UINT32_MAX, Path,
        NULL, &ExternalPath);
    if (FUNC0 (Status))
    {
        return_VOID;
    }

    /*
     * Get the full pathname from the root if "Path" has one or more
     * parent prefixes (^). Note: path will not contain a leading '\'.
     */
    if (*Path == (UINT8) AML_PARENT_PREFIX)
    {
        Temp = FUNC4 (Op, ExternalPath);

        /* Set new external path */

        FUNC1 (ExternalPath);
        ExternalPath = Temp;
        if (!Temp)
        {
            return_VOID;
        }

        /* Create the new internal pathname */

        Flags |= ACPI_EXT_INTERNAL_PATH_ALLOCATED;
        Status = FUNC6 (ExternalPath, &InternalPath);
        if (FUNC0 (Status))
        {
            FUNC1 (ExternalPath);
            return_VOID;
        }
    }

    /* Create the new External() declaration node */

    Status = FUNC3 (ExternalPath, InternalPath,
        Type, Value, Flags);
    if (FUNC0 (Status))
    {
        FUNC1 (ExternalPath);
        if (Flags & ACPI_EXT_INTERNAL_PATH_ALLOCATED)
        {
            FUNC1 (InternalPath);
        }
    }

    return_VOID;
}