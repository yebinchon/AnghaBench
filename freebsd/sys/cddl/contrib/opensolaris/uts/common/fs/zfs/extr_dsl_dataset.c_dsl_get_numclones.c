
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ ds_num_children; } ;


 int ASSERT (int ) ;
 TYPE_3__* dsl_dataset_phys (TYPE_1__*) ;

uint64_t
dsl_get_numclones(dsl_dataset_t *ds)
{
 ASSERT(ds->ds_is_snapshot);
 return (dsl_dataset_phys(ds)->ds_num_children - 1);
}
