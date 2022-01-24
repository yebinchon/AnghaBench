#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Pointer; } ;
struct TYPE_7__ {int /*<<< orphan*/  Type; } ;
struct TYPE_9__ {TYPE_2__ String; TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_3__* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_OPERAND_OBJECT     **ResultDesc)
{
    ACPI_OPERAND_OBJECT     *ReturnDesc;
    const char              *TypeString;


    TypeString = FUNC1 (ObjDesc->Common.Type);

    ReturnDesc = FUNC0 (
        ((ACPI_SIZE) FUNC4 (TypeString) + 9)); /* 9 For "[ Object]" */
    if (!ReturnDesc)
    {
        return (AE_NO_MEMORY);
    }

    FUNC3 (ReturnDesc->String.Pointer, "[");
    FUNC2 (ReturnDesc->String.Pointer, TypeString);
    FUNC2 (ReturnDesc->String.Pointer, " Object]");

    *ResultDesc = ReturnDesc;
    return (AE_OK);
}