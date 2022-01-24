#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {char* Pointer; scalar_t__ Length; } ;
struct TYPE_8__ {TYPE_1__ String; } ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  UtCreateStringObject ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

ACPI_OPERAND_OBJECT *
FUNC6 (
    ACPI_SIZE               StringSize)
{
    ACPI_OPERAND_OBJECT     *StringDesc;
    char                    *String;


    FUNC2 (UtCreateStringObject, StringSize);


    /* Create a new String object */

    StringDesc = FUNC3 (ACPI_TYPE_STRING);
    if (!StringDesc)
    {
        FUNC5 (NULL);
    }

    /*
     * Allocate the actual string buffer -- (Size + 1) for NULL terminator.
     * NOTE: Zero-length strings are NULL terminated
     */
    String = FUNC0 (StringSize + 1);
    if (!String)
    {
        FUNC1 ((AE_INFO, "Could not allocate size %u",
            (UINT32) StringSize));

        FUNC4 (StringDesc);
        FUNC5 (NULL);
    }

    /* Complete string object initialization */

    StringDesc->String.Pointer = String;
    StringDesc->String.Length = (UINT32) StringSize;

    /* Return the new string descriptor */

    FUNC5 (StringDesc);
}