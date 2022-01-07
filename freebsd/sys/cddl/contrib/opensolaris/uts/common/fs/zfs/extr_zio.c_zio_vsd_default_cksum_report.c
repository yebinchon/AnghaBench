
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_size; int io_abd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int zcr_free; int zcr_finish; void* zcr_cbdata; int zcr_cbinfo; } ;
typedef TYPE_2__ zio_cksum_report_t ;


 int abd_copy_to_buf (void*,int ,int ) ;
 void* zio_buf_alloc (int ) ;
 int zio_buf_free ;
 int zio_vsd_default_cksum_finish ;

void
zio_vsd_default_cksum_report(zio_t *zio, zio_cksum_report_t *zcr, void *ignored)
{
 void *buf = zio_buf_alloc(zio->io_size);

 abd_copy_to_buf(buf, zio->io_abd, zio->io_size);

 zcr->zcr_cbinfo = zio->io_size;
 zcr->zcr_cbdata = buf;
 zcr->zcr_finish = zio_vsd_default_cksum_finish;
 zcr->zcr_free = zio_buf_free;
}
