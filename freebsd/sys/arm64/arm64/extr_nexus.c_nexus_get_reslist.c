
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef int device_t ;


 struct nexus_device* DEVTONX (int ) ;

__attribute__((used)) static struct resource_list *
nexus_get_reslist(device_t dev, device_t child)
{
 struct nexus_device *ndev = DEVTONX(child);

 return (&ndev->nx_resources);
}
