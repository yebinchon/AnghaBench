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
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NsGetExternalPathname ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3 (
    ACPI_NAMESPACE_NODE     *Node)
{
    char                    *NameBuffer;


    FUNC0 (NsGetExternalPathname, Node);


    NameBuffer = FUNC1 (Node, FALSE);
    FUNC2 (NameBuffer);
}