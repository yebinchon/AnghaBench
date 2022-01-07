
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int (* poll_status ) (TYPE_2__*) ;} ;
struct TYPE_12__ {TYPE_6__* periph; TYPE_1__ enc_vec; int enc_daemon; int status_updater; } ;
typedef TYPE_2__ enc_softc_t ;
struct TYPE_13__ {int unit_number; } ;


 int ENXIO ;
 int callout_init_mtx (int *,int ,int ) ;
 scalar_t__ cam_periph_acquire (TYPE_6__*) ;
 int cam_periph_lock (TYPE_6__*) ;
 int cam_periph_mtx (TYPE_6__*) ;
 int cam_periph_release (TYPE_6__*) ;
 int cam_periph_unlock (TYPE_6__*) ;
 int enc_daemon ;
 int kproc_create (int ,TYPE_2__*,int *,int ,int ,char*,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int
enc_kproc_init(enc_softc_t *enc)
{
 int result;

 callout_init_mtx(&enc->status_updater, cam_periph_mtx(enc->periph), 0);

 if (cam_periph_acquire(enc->periph) != 0)
  return (ENXIO);

 result = kproc_create(enc_daemon, enc, &enc->enc_daemon, 0,
                     0, "enc_daemon%d",
         enc->periph->unit_number);
 if (result == 0) {

  cam_periph_lock(enc->periph);
  enc->enc_vec.poll_status(enc);
  cam_periph_unlock(enc->periph);
 } else
  cam_periph_release(enc->periph);
 return (result);
}
