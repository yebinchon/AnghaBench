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
typedef  scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__* Name; } ;
struct TYPE_7__ {TYPE_1__ Info; } ;
typedef  TYPE_2__ ACPI_PREDEFINED_INFO ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__*) ; 
 scalar_t__ ACPI_NOT_RESERVED_NAME ; 
 scalar_t__ ACPI_PREDEFINED_NAME ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_COMPILER_INTERNAL ; 
 TYPE_2__* AcpiGbl_PredefinedMethods ; 
 TYPE_2__* AcpiGbl_ResourceNames ; 
 TYPE_2__* AcpiGbl_ScopeNames ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

UINT32
FUNC3 (
    ACPI_PARSE_OBJECT       *Op,
    char                    *Name)
{
    UINT32                      i;
    const ACPI_PREDEFINED_INFO  *ThisName;


    if (Name[0] == 0)
    {
        FUNC2 (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
            "zero length name found");
    }

    /* All reserved names are prefixed with a single underscore */

    if (Name[0] != '_')
    {
        return (ACPI_NOT_RESERVED_NAME);
    }

    /* Check for a standard predefined method name */

    ThisName = AcpiGbl_PredefinedMethods;
    for (i = 0; ThisName->Info.Name[0]; i++)
    {
        if (FUNC0 (Name, ThisName->Info.Name))
        {
            /* Return index into predefined array */
            return (i);
        }

        ThisName++; /* Does not account for extra package data, but is OK */
    }

    /* Check for resource names and predefined scope names */

    ThisName = AcpiGbl_ResourceNames;
    while (ThisName->Info.Name[0])
    {
        if (FUNC0 (Name, ThisName->Info.Name))
        {
            return (ACPI_PREDEFINED_NAME);
        }

        ThisName++;
    }

    ThisName = AcpiGbl_ScopeNames;
    while (ThisName->Info.Name[0])
    {
        if (FUNC0 (Name, ThisName->Info.Name))
        {
            return (ACPI_PREDEFINED_NAME);
        }

        ThisName++;
    }

    /* Check for _Lxx/_Exx/_Wxx/_Qxx/_T_x. Warning if unknown predefined name */

    return (FUNC1 (Op, Name));
}