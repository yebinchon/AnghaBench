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
typedef  int uint8_t ;
struct acpi_device {int ad_flags; int ad_cls_class; void* ad_private; int /*<<< orphan*/  ad_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_IVAR_FLAGS 137 
#define  ACPI_IVAR_HANDLE 136 
#define  ACPI_IVAR_PRIVATE 135 
 int ENOENT ; 
#define  ISA_IVAR_COMPATID 134 
#define  ISA_IVAR_LOGICALID 133 
#define  ISA_IVAR_SERIAL 132 
#define  ISA_IVAR_VENDORID 131 
#define  PCI_IVAR_CLASS 130 
#define  PCI_IVAR_PROGIF 129 
#define  PCI_IVAR_SUBCLASS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int index, uintptr_t *result)
{
    struct acpi_device	*ad;

    if ((ad = FUNC1(child)) == NULL) {
	FUNC2(child, "device has no ivars\n");
	return (ENOENT);
    }

    /* ACPI and ISA compatibility ivars */
    switch(index) {
    case ACPI_IVAR_HANDLE:
	*(ACPI_HANDLE *)result = ad->ad_handle;
	break;
    case ACPI_IVAR_PRIVATE:
	*(void **)result = ad->ad_private;
	break;
    case ACPI_IVAR_FLAGS:
	*(int *)result = ad->ad_flags;
	break;
    case ISA_IVAR_VENDORID:
    case ISA_IVAR_SERIAL:
    case ISA_IVAR_COMPATID:
	*(int *)result = -1;
	break;
    case ISA_IVAR_LOGICALID:
	*(int *)result = FUNC0(child);
	break;
    case PCI_IVAR_CLASS:
	*(uint8_t*)result = (ad->ad_cls_class >> 16) & 0xff;
	break;
    case PCI_IVAR_SUBCLASS:
	*(uint8_t*)result = (ad->ad_cls_class >> 8) & 0xff;
	break;
    case PCI_IVAR_PROGIF:
	*(uint8_t*)result = (ad->ad_cls_class >> 0) & 0xff;
	break;
    default:
	return (ENOENT);
    }

    return (0);
}