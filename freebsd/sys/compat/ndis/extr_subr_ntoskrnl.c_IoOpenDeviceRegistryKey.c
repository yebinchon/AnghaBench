
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_object {int dummy; } ;
typedef int int32_t ;


 int NDIS_STATUS_INVALID_DEVICE_REQUEST ;

__attribute__((used)) static int32_t
IoOpenDeviceRegistryKey(struct device_object *devobj, uint32_t type,
    uint32_t mask, void **key)
{
 return (NDIS_STATUS_INVALID_DEVICE_REQUEST);
}
