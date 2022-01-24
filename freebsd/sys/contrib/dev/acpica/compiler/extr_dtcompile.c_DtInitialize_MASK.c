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
typedef  int UINT32 ;

/* Variables and functions */
 scalar_t__ ACPI_CA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * AslGbl_FieldList ; 
 int /*<<< orphan*/ * AslGbl_RootTable ; 
 int /*<<< orphan*/ * AslGbl_SubtableStack ; 
 int /*<<< orphan*/  VersionString ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC2 (
    void)
{


    FUNC0 (2); /* Set width to 64 bits */

    AslGbl_FieldList = NULL;
    AslGbl_RootTable = NULL;
    AslGbl_SubtableStack = NULL;

    FUNC1 (VersionString, "%X", (UINT32) ACPI_CA_VERSION);
    return;
}