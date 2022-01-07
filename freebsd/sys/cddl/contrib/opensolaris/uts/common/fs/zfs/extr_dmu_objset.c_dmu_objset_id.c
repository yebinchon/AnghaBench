
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_5__ {int ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;



uint64_t
dmu_objset_id(objset_t *os)
{
 dsl_dataset_t *ds = os->os_dsl_dataset;

 return (ds ? ds->ds_object : 0);
}
