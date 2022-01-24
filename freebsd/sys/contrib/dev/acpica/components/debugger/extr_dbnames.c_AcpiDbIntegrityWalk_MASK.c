#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_12__ {int /*<<< orphan*/  Objects; int /*<<< orphan*/  Nodes; } ;
struct TYPE_10__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_11__ {scalar_t__ Type; TYPE_1__ Name; scalar_t__ Object; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef  TYPE_4__ ACPI_INTEGRITY_INFO ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ ACPI_TYPE_LOCAL_ALIAS ; 
 scalar_t__ ACPI_TYPE_LOCAL_MAX ; 
 scalar_t__ ACPI_TYPE_LOCAL_METHOD_ALIAS ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,...) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_HANDLE             ObjHandle,
    UINT32                  NestingLevel,
    void                    *Context,
    void                    **ReturnValue)
{
    ACPI_INTEGRITY_INFO     *Info = (ACPI_INTEGRITY_INFO *) Context;
    ACPI_NAMESPACE_NODE     *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ACPI_OPERAND_OBJECT     *Object;
    BOOLEAN                 Alias = TRUE;


    Info->Nodes++;

    /* Verify the NS node, and dereference aliases */

    while (Alias)
    {
        if (FUNC0 (Node) != ACPI_DESC_TYPE_NAMED)
        {
            FUNC2 (
                "Invalid Descriptor Type for Node %p [%s] - "
                "is %2.2X should be %2.2X\n",
                Node, FUNC3 (Node),
                FUNC0 (Node), ACPI_DESC_TYPE_NAMED);
            return (AE_OK);
        }

        if ((Node->Type == ACPI_TYPE_LOCAL_ALIAS)  ||
            (Node->Type == ACPI_TYPE_LOCAL_METHOD_ALIAS))
        {
            Node = (ACPI_NAMESPACE_NODE *) Node->Object;
        }
        else
        {
            Alias = FALSE;
        }
    }

    if (Node->Type > ACPI_TYPE_LOCAL_MAX)
    {
        FUNC2 ("Invalid Object Type for Node %p, Type = %X\n",
            Node, Node->Type);
        return (AE_OK);
    }

    if (!FUNC4 (Node->Name.Ascii))
    {
        FUNC2 ("Invalid AcpiName for Node %p\n", Node);
        return (AE_OK);
    }

    Object = FUNC1 (Node);
    if (Object)
    {
        Info->Objects++;
        if (FUNC0 (Object) != ACPI_DESC_TYPE_OPERAND)
        {
            FUNC2 ("Invalid Descriptor Type for Object %p [%s]\n",
                Object, FUNC3 (Object));
        }
    }

    return (AE_OK);
}