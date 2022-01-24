#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_5__ {scalar_t__ ParseOpcode; int CompileFlags; int /*<<< orphan*/  ParseOpName; int /*<<< orphan*/  AmlOpcode; int /*<<< orphan*/  Namepath; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (TYPE_2__*,int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_RESOURCE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int OP_IS_RESOURCE_DESC ; 
 scalar_t__ PARSEOP_DEFAULT_ARG ; 
 scalar_t__ PARSEOP_NAME ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC6 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{
    ACPI_WALK_STATE         *WalkState = (ACPI_WALK_STATE *) Context;
    ACPI_OBJECT_TYPE        ObjectType;
    BOOLEAN                 ForceNewScope = FALSE;


    FUNC1 (LdCommonNamespaceEnd);


    /* We are only interested in opcodes that have an associated name */

    if (!Op->Asl.Namepath)
    {
        return (AE_OK);
    }

    /* Get the type to determine if we should pop the scope */

    if ((Op->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG) &&
        (Op->Asl.CompileFlags == OP_IS_RESOURCE_DESC))
    {
        /* TBD: Merge into AcpiDsMapNamedOpcodeToDataType */

        ObjectType = ACPI_TYPE_LOCAL_RESOURCE;
    }
    else
    {
        ObjectType = FUNC5 (Op->Asl.AmlOpcode);
    }

    /* Pop scope that was pushed for Resource Templates */

    if (Op->Asl.ParseOpcode == PARSEOP_NAME)
    {
        if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DESC)
        {
            ForceNewScope = TRUE;
        }
    }

    /* Pop the scope stack */

    if (ForceNewScope || FUNC3 (ObjectType))
    {
        FUNC0 ((ACPI_DB_DISPATCH,
            "(%s): Popping scope for Op [%s] %p\n",
            FUNC4 (ObjectType), Op->Asl.ParseOpName, Op));

        (void) FUNC2 (WalkState);
    }

    return (AE_OK);
}