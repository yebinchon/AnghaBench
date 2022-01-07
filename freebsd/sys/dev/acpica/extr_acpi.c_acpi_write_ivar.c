
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int ad_flags; void* ad_private; int ad_handle; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;





 int ENOENT ;
 struct acpi_device* device_get_ivars (int ) ;
 int device_printf (int ,char*) ;
 int panic (char*,int) ;

__attribute__((used)) static int
acpi_write_ivar(device_t dev, device_t child, int index, uintptr_t value)
{
    struct acpi_device *ad;

    if ((ad = device_get_ivars(child)) == ((void*)0)) {
 device_printf(child, "device has no ivars\n");
 return (ENOENT);
    }

    switch(index) {
    case 129:
 ad->ad_handle = (ACPI_HANDLE)value;
 break;
    case 128:
 ad->ad_private = (void *)value;
 break;
    case 130:
 ad->ad_flags = (int)value;
 break;
    default:
 panic("bad ivar write request (%d)", index);
 return (ENOENT);
    }

    return (0);
}
