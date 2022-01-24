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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_FILE_NAMESPACE_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AslGbl_NsOutputFlag ; 
 scalar_t__ AslGbl_NumNamespaceObjects ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NsDoOneNamespaceObject ; 
 int /*<<< orphan*/  NsDoOnePathname ; 

ACPI_STATUS
FUNC3 (
    void)
{
    ACPI_STATUS             Status;


    if (!AslGbl_NsOutputFlag)
    {
        return (AE_OK);
    }

    AslGbl_NumNamespaceObjects = 0;

    /* File header */

    FUNC2 (ASL_FILE_NAMESPACE_OUTPUT, "Contents of ACPI Namespace\n\n");
    FUNC2 (ASL_FILE_NAMESPACE_OUTPUT, "Count  Depth    Name - Type\n\n");

    /* Walk entire namespace from the root */

    Status = FUNC1 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, NsDoOneNamespaceObject, NULL,
        NULL, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* Print the full pathname for each namespace node */

    FUNC2 (ASL_FILE_NAMESPACE_OUTPUT, "\nNamespace pathnames\n\n");

    Status = FUNC1 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, NsDoOnePathname, NULL,
        NULL, NULL);

    return (Status);
}