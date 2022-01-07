
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 struct nexus_device* DEVTONX (int ) ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
nexus_set_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
 struct nexus_device *ndev = DEVTONX(child);
 struct resource_list *rl = &ndev->nx_resources;


 resource_list_add(rl, type, rid, start, start + count - 1, count);

 return(0);
}
