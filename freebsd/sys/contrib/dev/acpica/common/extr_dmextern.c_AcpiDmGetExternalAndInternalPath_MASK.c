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
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_BAD_PATHNAME ; 
 int /*<<< orphan*/  AE_OK ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 

__attribute__((used)) static ACPI_STATUS
FUNC4 (
    ACPI_NAMESPACE_NODE     *Node,
    char                    **ExternalPath,
    char                    **InternalPath)
{
    ACPI_STATUS             Status;


    if (!Node)
    {
        return (AE_BAD_PARAMETER);
    }

    /* Get the full external and internal pathnames to the node */

    *ExternalPath = FUNC2 (Node);
    if (!*ExternalPath)
    {
        return (AE_BAD_PATHNAME);
    }

    Status = FUNC3 (*ExternalPath, InternalPath);
    if (FUNC0 (Status))
    {
        FUNC1 (*ExternalPath);
        return (Status);
    }

    return (AE_OK);
}