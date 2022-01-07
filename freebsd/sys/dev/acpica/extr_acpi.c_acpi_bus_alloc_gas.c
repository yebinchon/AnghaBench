
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int SpaceId; int BitWidth; int Address; } ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;




 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int) ;
 int bus_delete_resource (int ,int,int) ;
 int bus_set_resource (int ,int,int,int ,int) ;

int
acpi_bus_alloc_gas(device_t dev, int *type, int *rid, ACPI_GENERIC_ADDRESS *gas,
    struct resource **res, u_int flags)
{
    int error, res_type;

    error = ENOMEM;
    if (type == ((void*)0) || rid == ((void*)0) || gas == ((void*)0) || res == ((void*)0))
 return (EINVAL);


    switch (gas->SpaceId) {
    case 128:
 res_type = SYS_RES_MEMORY;
 break;
    case 129:
 res_type = SYS_RES_IOPORT;
 break;
    default:
 return (EOPNOTSUPP);
    }





    if (gas->BitWidth && gas->BitWidth < 8)
 gas->BitWidth = 8;


    if (gas->Address == 0 || gas->BitWidth == 0)
 return (EINVAL);

    bus_set_resource(dev, res_type, *rid, gas->Address,
 gas->BitWidth / 8);
    *res = bus_alloc_resource_any(dev, res_type, rid, RF_ACTIVE | flags);
    if (*res != ((void*)0)) {
 *type = res_type;
 error = 0;
    } else
 bus_delete_resource(dev, res_type, *rid);

    return (error);
}
