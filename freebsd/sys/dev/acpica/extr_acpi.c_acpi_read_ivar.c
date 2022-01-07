
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct acpi_device {int ad_flags; int ad_cls_class; void* ad_private; int ad_handle; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;





 int ENOENT ;







 int acpi_isa_get_logicalid (int ) ;
 struct acpi_device* device_get_ivars (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
acpi_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
    struct acpi_device *ad;

    if ((ad = device_get_ivars(child)) == ((void*)0)) {
 device_printf(child, "device has no ivars\n");
 return (ENOENT);
    }


    switch(index) {
    case 136:
 *(ACPI_HANDLE *)result = ad->ad_handle;
 break;
    case 135:
 *(void **)result = ad->ad_private;
 break;
    case 137:
 *(int *)result = ad->ad_flags;
 break;
    case 131:
    case 132:
    case 134:
 *(int *)result = -1;
 break;
    case 133:
 *(int *)result = acpi_isa_get_logicalid(child);
 break;
    case 130:
 *(uint8_t*)result = (ad->ad_cls_class >> 16) & 0xff;
 break;
    case 128:
 *(uint8_t*)result = (ad->ad_cls_class >> 8) & 0xff;
 break;
    case 129:
 *(uint8_t*)result = (ad->ad_cls_class >> 0) & 0xff;
 break;
    default:
 return (ENOENT);
    }

    return (0);
}
