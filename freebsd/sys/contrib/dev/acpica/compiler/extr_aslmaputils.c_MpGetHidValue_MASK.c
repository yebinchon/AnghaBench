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
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int Type; TYPE_2__* Object; } ;
struct TYPE_11__ {int /*<<< orphan*/  Value; } ;
struct TYPE_9__ {char* Pointer; } ;
struct TYPE_10__ {TYPE_3__ Integer; TYPE_1__ String; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EISAID_STRING_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_NO_UPSEARCH ; 
#define  ACPI_TYPE_INTEGER 130 
#define  ACPI_TYPE_METHOD 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  METHOD_NAME__HID ; 
 char* FUNC4 (TYPE_4__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

char *
FUNC6 (
    ACPI_NAMESPACE_NODE     *DeviceNode)
{
    ACPI_NAMESPACE_NODE     *HidNode;
    char                    *HidString;
    ACPI_STATUS             Status;


    Status = FUNC2 (DeviceNode, METHOD_NAME__HID,
        ACPI_NS_NO_UPSEARCH, &HidNode);
    if (FUNC0 (Status))
    {
        goto ErrorExit;
    }

    /* If only partial namespace, get the _HID from the parse tree */

    if (!HidNode->Object)
    {
        return (FUNC4 (HidNode));
    }

    /* Handle the different _HID flavors */

    switch (HidNode->Type)
    {
    case ACPI_TYPE_STRING:

        return (HidNode->Object->String.Pointer);

    case ACPI_TYPE_INTEGER:

        /* Convert EISAID to a string */

        HidString = FUNC5 (ACPI_EISAID_STRING_SIZE);
        FUNC1 (HidString, HidNode->Object->Integer.Value);
        return (HidString);

    case ACPI_TYPE_METHOD:

        return ("-Method-");

    default:

        FUNC3 (ASL_FILE_MAP_OUTPUT, "BAD HID TYPE: %u", HidNode->Type);
        break;
    }


ErrorExit:
    return ("-No HID-");
}