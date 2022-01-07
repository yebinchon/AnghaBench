
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ ds_reserved; scalar_t__ ds_quota; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {scalar_t__ ds_unique_bytes; } ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int TRUE ;
 TYPE_4__* dsl_dataset_phys (TYPE_1__*) ;
 scalar_t__ dsl_dir_space_available (int ,int *,int ,int ) ;
 scalar_t__ dsl_get_referenced (TYPE_1__*) ;

uint64_t
dsl_get_available(dsl_dataset_t *ds)
{
 uint64_t refdbytes = dsl_get_referenced(ds);
 uint64_t availbytes = dsl_dir_space_available(ds->ds_dir,
     ((void*)0), 0, TRUE);
 if (ds->ds_reserved > dsl_dataset_phys(ds)->ds_unique_bytes) {
  availbytes +=
      ds->ds_reserved - dsl_dataset_phys(ds)->ds_unique_bytes;
 }
 if (ds->ds_quota != 0) {



  if (refdbytes < ds->ds_quota) {
   availbytes = MIN(availbytes,
       ds->ds_quota - refdbytes);
  } else {
   availbytes = 0;
  }
 }
 return (availbytes);
}
