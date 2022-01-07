
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int RF_ACTIVE ;


 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct rman mem_rman ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
nexus_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource *rv;
 struct rman *rm;
 int needactivate = flags & RF_ACTIVE;

 flags &= ~RF_ACTIVE;

 switch (type) {
 case 128:
 case 129:
  rm = &mem_rman;
  break;

 default:
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return (((void*)0));

 rman_set_rid(rv, *rid);

 if (needactivate) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return (0);
  }
 }

 return (rv);
}
