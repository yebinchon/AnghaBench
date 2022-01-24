#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* InternalPath; struct TYPE_7__* Next; int /*<<< orphan*/  Flags; } ;
struct TYPE_6__ {int Flags; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;
typedef  TYPE_2__ ACPI_EXTERNAL_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EXT_CONFLICTING_DECLARATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ AML_ROOT_PREFIX ; 
 int ANOBJ_IS_EXTERNAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 TYPE_2__* AcpiGbl_ExternalList ; 
 int /*<<< orphan*/  DmMarkExternalConflict ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*) ; 

void
FUNC6 (
    ACPI_NAMESPACE_NODE     *Node)
{
    ACPI_EXTERNAL_LIST      *ExternalList = AcpiGbl_ExternalList;
    char                    *ExternalPath;
    char                    *InternalPath;
    char                    *Temp;
    ACPI_STATUS             Status;


    FUNC2 (DmMarkExternalConflict);


    if (Node->Flags & ANOBJ_IS_EXTERNAL)
    {
        return_VOID;
    }

    /* Get the full external and internal pathnames to the node */

    Status = FUNC3 (Node,
        &ExternalPath, &InternalPath);
    if (FUNC0 (Status))
    {
        return_VOID;
    }

    /* Remove the root backslash */

    Status = FUNC4 (&InternalPath);
    if (FUNC0 (Status))
    {
        FUNC1 (InternalPath);
        FUNC1 (ExternalPath);
        return_VOID;
    }

    while (ExternalList)
    {
        Temp = ExternalList->InternalPath;
        if ((*ExternalList->InternalPath == AML_ROOT_PREFIX) &&
            (ExternalList->InternalPath[1]))
        {
            Temp++;
        }

        if (!FUNC5 (ExternalList->InternalPath, InternalPath))
        {
            ExternalList->Flags |= ACPI_EXT_CONFLICTING_DECLARATION;
        }
        ExternalList = ExternalList->Next;
    }

    FUNC1 (InternalPath);
    FUNC1 (ExternalPath);

    return_VOID;
}