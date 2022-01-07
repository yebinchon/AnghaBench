
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int dmu_object_info_t ;
struct TYPE_4__ {int ** ddt_object; int ddt_os; } ;
typedef TYPE_1__ ddt_t ;


 int ENOENT ;
 int SET_ERROR (int ) ;
 int ddt_object_exists (TYPE_1__*,int,int) ;
 int dmu_object_info (int ,int ,int *) ;

int
ddt_object_info(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    dmu_object_info_t *doi)
{
 if (!ddt_object_exists(ddt, type, class))
  return (SET_ERROR(ENOENT));

 return (dmu_object_info(ddt->ddt_os, ddt->ddt_object[type][class],
     doi));
}
