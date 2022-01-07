
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_dataset_t ;
typedef int blkptr_t ;
struct TYPE_2__ {int ds_bp; } ;


 TYPE_1__* dsl_dataset_phys (int *) ;

blkptr_t *
dsl_dataset_get_blkptr(dsl_dataset_t *ds)
{
 return (&dsl_dataset_phys(ds)->ds_bp);
}
