
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zcr_cbdata; } ;
typedef TYPE_1__ zio_cksum_report_t ;


 int B_FALSE ;
 int zfs_ereport_finish_checksum (TYPE_1__*,void const*,int ,int ) ;

__attribute__((used)) static void
zio_vsd_default_cksum_finish(zio_cksum_report_t *zcr,
    const void *good_buf)
{

 zfs_ereport_finish_checksum(zcr, good_buf, zcr->zcr_cbdata, B_FALSE);
}
