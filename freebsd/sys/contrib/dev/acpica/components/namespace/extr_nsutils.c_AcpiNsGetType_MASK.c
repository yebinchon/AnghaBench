#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Type; } ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_TYPE ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  NsGetType ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_OBJECT_TYPE
FUNC3 (
    ACPI_NAMESPACE_NODE     *Node)
{
    FUNC0 (NsGetType);


    if (!Node)
    {
        FUNC1 ((AE_INFO, "Null Node parameter"));
        FUNC2 (ACPI_TYPE_ANY);
    }

    FUNC2 (Node->Type);
}