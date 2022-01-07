
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ds_fsid_guid; int * ds_owner; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int ASSERT (int ) ;
 int unique_remove (int ) ;

__attribute__((used)) static void
dsl_dataset_evict_sync(void *dbu)
{
 dsl_dataset_t *ds = dbu;

 ASSERT(ds->ds_owner == ((void*)0));

 unique_remove(ds->ds_fsid_guid);
}
