
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* zcr_ckinfo; int zcr_cbinfo; int zcr_cbdata; int (* zcr_free ) (int ,int ) ;int * zcr_detector; int * zcr_ereport; } ;
typedef TYPE_1__ zio_cksum_report_t ;


 int FM_NVA_FREE ;
 int fm_nvlist_destroy (int *,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int stub1 (int ,int ) ;

void
zfs_ereport_free_checksum(zio_cksum_report_t *rpt)
{
 rpt->zcr_free(rpt->zcr_cbdata, rpt->zcr_cbinfo);

 if (rpt->zcr_ckinfo != ((void*)0))
  kmem_free(rpt->zcr_ckinfo, sizeof (*rpt->zcr_ckinfo));

 kmem_free(rpt, sizeof (*rpt));
}
