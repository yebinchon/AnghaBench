
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device_1_0 {int real_device; } ;


 char const* ibv_get_device_name (int ) ;

const char *__ibv_get_device_name_1_0(struct ibv_device_1_0 *device)
{
 return ibv_get_device_name(device->real_device);
}
