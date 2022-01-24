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
typedef  int UINT8 ;

/* Variables and functions */
#define  ACPI_RESOURCE_TYPE_ADDRESS16 131 
#define  ACPI_RESOURCE_TYPE_ADDRESS32 130 
#define  ACPI_RESOURCE_TYPE_ADDRESS64 129 
#define  ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (
    UINT8                   Type)
{

    switch (Type)
    {
    case ACPI_RESOURCE_TYPE_ADDRESS16:

        FUNC0 ("Word");
        break;

    case ACPI_RESOURCE_TYPE_ADDRESS32:

        FUNC0 ("DWord");
        break;

    case ACPI_RESOURCE_TYPE_ADDRESS64:

        FUNC0 ("QWord");
        break;

    case ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64:

        FUNC0 ("Extended");
        break;

    default:

        return;
    }
}