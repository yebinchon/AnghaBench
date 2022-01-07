
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* softc_invalidate ) (struct enc_softc*) ;} ;
struct enc_softc {int enc_dev; int status_updater; int * enc_daemon; int enc_flags; TYPE_1__ enc_vec; } ;
struct cam_periph {int path; struct enc_softc* softc; } ;


 int ENC_FLAG_INVALID ;
 int ENC_FLAG_SHUTDOWN ;
 int callout_drain (int *) ;
 int destroy_dev_sched_cb (int ,int ,struct cam_periph*) ;
 int enc_async ;
 int enc_devgonecb ;
 int stub1 (struct enc_softc*) ;
 int wakeup (int *) ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
enc_oninvalidate(struct cam_periph *periph)
{
 struct enc_softc *enc;

 enc = periph->softc;

 enc->enc_flags |= ENC_FLAG_INVALID;


 if (enc->enc_vec.softc_invalidate != ((void*)0))
  enc->enc_vec.softc_invalidate(enc);




 xpt_register_async(0, enc_async, periph, periph->path);




 enc->enc_flags |= ENC_FLAG_SHUTDOWN;
 if (enc->enc_daemon != ((void*)0)) {

  wakeup(enc->enc_daemon);
 }
 callout_drain(&enc->status_updater);

 destroy_dev_sched_cb(enc->enc_dev, enc_devgonecb, periph);
}
