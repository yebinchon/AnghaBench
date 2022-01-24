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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 char AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  DmAddPathToExternalList ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC6 (
    char                    *Path,
    UINT8                   Type,
    UINT32                  Value,
    UINT16                  Flags)
{
    char                    *InternalPath;
    char                    *ExternalPath;
    ACPI_STATUS             Status;


    FUNC2 (DmAddPathToExternalList);


    if (!Path)
    {
        return_VOID;
    }

    /* Remove a root backslash if present */

    if ((*Path == AML_ROOT_PREFIX) && (Path[1]))
    {
        Path++;
    }

    /* Create the internal and external pathnames */

    Status = FUNC5 (Path, &InternalPath);
    if (FUNC0 (Status))
    {
        return_VOID;
    }

    Status = FUNC4 (ACPI_UINT32_MAX, InternalPath,
        NULL, &ExternalPath);
    if (FUNC0 (Status))
    {
        FUNC1 (InternalPath);
        return_VOID;
    }

    /* Create the new External() declaration node */

    Status = FUNC3 (ExternalPath, InternalPath,
        Type, Value, (Flags | ACPI_EXT_INTERNAL_PATH_ALLOCATED));
    if (FUNC0 (Status))
    {
        FUNC1 (ExternalPath);
        FUNC1 (InternalPath);
    }

    return_VOID;
}