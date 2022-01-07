
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zcr_detector; int * zcr_ereport; int zcr_length; int zcr_ckinfo; } ;
typedef TYPE_1__ zio_cksum_report_t ;
typedef int zfs_ecksum_info_t ;
typedef int boolean_t ;


 int EVCH_SLEEP ;
 int FM_NVA_FREE ;
 int * annotate_ecksum (int *,int ,void const*,void const*,int ,int ) ;
 int fm_ereport_post (int *,int ) ;
 int fm_nvlist_destroy (int *,int ) ;
 int kmem_free (int *,int) ;

void
zfs_ereport_finish_checksum(zio_cksum_report_t *report,
    const void *good_data, const void *bad_data, boolean_t drop_if_identical)
{
}
