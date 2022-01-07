
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_spec {int type; int rid; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int bus_release_resource (int ,int,int ,struct resource*) ;

void
bus_release_resources(device_t dev, const struct resource_spec *rs,
    struct resource **res)
{
 int i;

 for (i = 0; rs[i].type != -1; i++)
  if (res[i] != ((void*)0)) {
   bus_release_resource(
       dev, rs[i].type, rs[i].rid, res[i]);
   res[i] = ((void*)0);
  }
}
