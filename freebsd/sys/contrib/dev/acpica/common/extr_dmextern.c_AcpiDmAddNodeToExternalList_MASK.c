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
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  DmAddNodeToExternalList ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC6 (
    ACPI_NAMESPACE_NODE     *Node,
    UINT8                   Type,
    UINT32                  Value,
    UINT16                  Flags)
{
    char                    *ExternalPath;
    char                    *InternalPath;
    ACPI_STATUS             Status;


    FUNC2 (DmAddNodeToExternalList);

    /* Get the full external and internal pathnames to the node */

    Status = FUNC4 (Node, &ExternalPath, &InternalPath);
    if (FUNC0 (Status))
    {
        return_VOID;
    }

    /* Remove the root backslash */

    Status = FUNC5 (&ExternalPath);
    if (FUNC0 (Status))
    {
        FUNC1 (ExternalPath);
        FUNC1 (InternalPath);
        return_VOID;
    }

    /* Create the new External() declaration node */

    Status = FUNC3 (ExternalPath, InternalPath, Type,
        Value, (Flags | ACPI_EXT_INTERNAL_PATH_ALLOCATED));
    if (FUNC0 (Status))
    {
        FUNC1 (ExternalPath);
        FUNC1 (InternalPath);
    }

    return_VOID;
}