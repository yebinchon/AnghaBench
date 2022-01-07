
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct localbus_devinfo {struct resource_list di_res; } ;
typedef int device_t ;


 struct localbus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
localbus_get_resource_list(device_t bus, device_t child)
{
 struct localbus_devinfo *di;

 di = device_get_ivars(child);
 return (&di->di_res);
}
