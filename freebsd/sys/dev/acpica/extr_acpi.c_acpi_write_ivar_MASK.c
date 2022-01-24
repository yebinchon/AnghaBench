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
struct acpi_device {int ad_flags; void* ad_private; int /*<<< orphan*/  ad_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_IVAR_FLAGS 130 
#define  ACPI_IVAR_HANDLE 129 
#define  ACPI_IVAR_PRIVATE 128 
 int ENOENT ; 
 struct acpi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int index, uintptr_t value)
{
    struct acpi_device	*ad;

    if ((ad = FUNC0(child)) == NULL) {
	FUNC1(child, "device has no ivars\n");
	return (ENOENT);
    }

    switch(index) {
    case ACPI_IVAR_HANDLE:
	ad->ad_handle = (ACPI_HANDLE)value;
	break;
    case ACPI_IVAR_PRIVATE:
	ad->ad_private = (void *)value;
	break;
    case ACPI_IVAR_FLAGS:
	ad->ad_flags = (int)value;
	break;
    default:
	FUNC2("bad ivar write request (%d)", index);
	return (ENOENT);
    }

    return (0);
}