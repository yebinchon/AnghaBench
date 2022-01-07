
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {char const* ddra_fsname; char const* ddra_tosnap; int * ddra_result; void* ddra_owner; } ;
typedef TYPE_1__ dsl_dataset_rollback_arg_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dataset_rollback_check ;
 int dsl_dataset_rollback_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_dataset_rollback(const char *fsname, const char *tosnap, void *owner,
    nvlist_t *result)
{
 dsl_dataset_rollback_arg_t ddra;

 ddra.ddra_fsname = fsname;
 ddra.ddra_tosnap = tosnap;
 ddra.ddra_owner = owner;
 ddra.ddra_result = result;

 return (dsl_sync_task(fsname, dsl_dataset_rollback_check,
     dsl_dataset_rollback_sync, &ddra,
     1, ZFS_SPACE_CHECK_RESERVED));
}
