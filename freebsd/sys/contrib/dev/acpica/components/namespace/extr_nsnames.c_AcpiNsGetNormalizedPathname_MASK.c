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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_GET_FUNCTION_NAME ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NsGetNormalizedPathname ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *
FUNC6 (
    ACPI_NAMESPACE_NODE     *Node,
    BOOLEAN                 NoTrailing)
{
    char                    *NameBuffer;
    ACPI_SIZE               Size;


    FUNC3 (NsGetNormalizedPathname, Node);


    /* Calculate required buffer size based on depth below root */

    Size = FUNC4 (Node, NULL, 0, NoTrailing);
    if (!Size)
    {
        FUNC5 (NULL);
    }

    /* Allocate a buffer to be returned to caller */

    NameBuffer = FUNC0 (Size);
    if (!NameBuffer)
    {
        FUNC2 ((AE_INFO,
            "Could not allocate %u bytes", (UINT32) Size));
        FUNC5 (NULL);
    }

    /* Build the path in the allocated buffer */

    (void) FUNC4 (Node, NameBuffer, Size, NoTrailing);

    FUNC1 ((ACPI_DB_NAMES, "%s: Path \"%s\"\n",
        ACPI_GET_FUNCTION_NAME, NameBuffer));

    FUNC5 (NameBuffer);
}