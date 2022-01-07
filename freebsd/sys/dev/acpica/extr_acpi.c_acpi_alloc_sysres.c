
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int RF_ACTIVE ;


 struct rman acpi_rman_io ;
 struct rman acpi_rman_mem ;
 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int,int,int,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

struct resource *
acpi_alloc_sysres(device_t child, int type, int *rid, rman_res_t start,
    rman_res_t end, rman_res_t count, u_int flags)
{
    struct rman *rm;
    struct resource *res;

    switch (type) {
    case 129:
 rm = &acpi_rman_io;
 break;
    case 128:
 rm = &acpi_rman_mem;
 break;
    default:
 return (((void*)0));
    }

    KASSERT(start + count - 1 == end, ("wildcard resource range"));
    res = rman_reserve_resource(rm, start, end, count, flags & ~RF_ACTIVE,
 child);
    if (res == ((void*)0))
 return (((void*)0));

    rman_set_rid(res, *rid);


    if (flags & RF_ACTIVE)
 if (bus_activate_resource(child, type, *rid, res) != 0) {
     rman_release_resource(res);
     return (((void*)0));
 }

    return (res);
}
