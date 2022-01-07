
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_spec {int type; int flags; int rid; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_OPTIONAL ;
 struct resource* bus_alloc_resource_any (int ,int,int *,int) ;
 int bus_release_resources (int ,struct resource_spec*,struct resource**) ;

int
bus_alloc_resources(device_t dev, struct resource_spec *rs,
    struct resource **res)
{
 int i;

 for (i = 0; rs[i].type != -1; i++)
  res[i] = ((void*)0);
 for (i = 0; rs[i].type != -1; i++) {
  res[i] = bus_alloc_resource_any(dev,
      rs[i].type, &rs[i].rid, rs[i].flags);
  if (res[i] == ((void*)0) && !(rs[i].flags & RF_OPTIONAL)) {
   bus_release_resources(dev, rs, res);
   return (ENXIO);
  }
 }
 return (0);
}
