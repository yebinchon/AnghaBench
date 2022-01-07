
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int uint64_t ;
struct TYPE_3__ {char const* ddsqra_name; int ddsqra_value; int ddsqra_source; } ;
typedef TYPE_1__ dsl_dir_set_qr_arg_t ;


 int ZFS_SPACE_CHECK_EXTRA_RESERVED ;
 int dsl_dir_set_reservation_check ;
 int dsl_dir_set_reservation_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int ,int ) ;

int
dsl_dir_set_reservation(const char *ddname, zprop_source_t source,
    uint64_t reservation)
{
 dsl_dir_set_qr_arg_t ddsqra;

 ddsqra.ddsqra_name = ddname;
 ddsqra.ddsqra_source = source;
 ddsqra.ddsqra_value = reservation;

 return (dsl_sync_task(ddname, dsl_dir_set_reservation_check,
     dsl_dir_set_reservation_sync, &ddsqra, 0,
     ZFS_SPACE_CHECK_EXTRA_RESERVED));
}
