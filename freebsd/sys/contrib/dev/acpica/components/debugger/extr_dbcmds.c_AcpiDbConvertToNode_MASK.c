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
typedef  int /*<<< orphan*/  ACPI_SIZE ;
typedef  char ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 char* AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

ACPI_NAMESPACE_NODE *
FUNC7 (
    char                    *InString)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_SIZE               Address;


    if ((*InString >= 0x30) && (*InString <= 0x39))
    {
        /* Numeric argument, convert */

        Address = FUNC6 (InString, NULL, 16);
        Node = FUNC1 (Address);
        if (!FUNC4 (Node, sizeof (ACPI_NAMESPACE_NODE)))
        {
            FUNC3 ("Address %p is invalid", Node);
            return (NULL);
        }

        /* Make sure pointer is valid NS node */

        if (FUNC0 (Node) != ACPI_DESC_TYPE_NAMED)
        {
            FUNC3 ("Address %p is not a valid namespace node [%s]\n",
                Node, FUNC5 (Node));
            return (NULL);
        }
    }
    else
    {
        /*
         * Alpha argument: The parameter is a name string that must be
         * resolved to a Namespace object.
         */
        Node = FUNC2 (InString);
        if (!Node)
        {
            FUNC3 (
                "Could not find [%s] in namespace, defaulting to root node\n",
                InString);
            Node = AcpiGbl_RootNode;
        }
    }

    return (Node);
}