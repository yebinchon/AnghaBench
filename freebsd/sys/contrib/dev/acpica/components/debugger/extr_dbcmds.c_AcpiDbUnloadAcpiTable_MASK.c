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
typedef  char ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ACPI_HANDLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6 (
    char                    *ObjectName)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_STATUS             Status;


    /* Translate name to an Named object */

    Node = FUNC2 (ObjectName);
    if (!Node)
    {
        return;
    }

    Status = FUNC5 (FUNC0 (ACPI_HANDLE, Node));
    if (FUNC1 (Status))
    {
        FUNC4 ("Parent of [%s] (%p) unloaded and uninstalled\n",
            ObjectName, Node);
    }
    else
    {
        FUNC4 ("%s, while unloading parent table of [%s]\n",
            FUNC3 (Status), ObjectName);
    }
}