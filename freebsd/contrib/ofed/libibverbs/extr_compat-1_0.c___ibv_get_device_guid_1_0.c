
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device_1_0 {int real_device; } ;
typedef int __be64 ;


 int ibv_get_device_guid (int ) ;

__be64 __ibv_get_device_guid_1_0(struct ibv_device_1_0 *device)
{
 return ibv_get_device_guid(device->real_device);
}
