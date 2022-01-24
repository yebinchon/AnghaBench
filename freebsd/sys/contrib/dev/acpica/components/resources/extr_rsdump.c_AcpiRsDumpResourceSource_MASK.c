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
struct TYPE_3__ {int Index; char* StringPtr; } ;
typedef  TYPE_1__ ACPI_RESOURCE_SOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (
    ACPI_RESOURCE_SOURCE    *ResourceSource)
{
    FUNC0 ();


    if (ResourceSource->Index == 0xFF)
    {
        return;
    }

    FUNC1 ("Resource Source Index",
        ResourceSource->Index);

    FUNC2 ("Resource Source",
        ResourceSource->StringPtr ?
            ResourceSource->StringPtr : "[Not Specified]");
}