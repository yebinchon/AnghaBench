
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct intr_config_hook {int * ich_func; } ;
struct TYPE_4__ {int enc_flags; scalar_t__ pending_actions; int periph; int * enc_daemon; int status_updater; struct intr_config_hook enc_boot_hold_ch; int current_action; } ;
typedef TYPE_1__ enc_softc_t ;


 int ENC_FLAG_SHUTDOWN ;
 int ENC_UPDATE_NONE ;
 int PUSER ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 int cam_periph_lock (int ) ;
 int cam_periph_release (int ) ;
 int cam_periph_sleep (int ,int *,int ,char*,int ) ;
 int cam_periph_unlock (int ) ;
 int config_intrhook_disestablish (struct intr_config_hook*) ;
 int enc_fsm_step (TYPE_1__*) ;
 int enc_status_updater ;
 int hz ;
 int kproc_exit (int ) ;

__attribute__((used)) static void
enc_daemon(void *arg)
{
 enc_softc_t *enc;

 enc = arg;

 cam_periph_lock(enc->periph);
 while ((enc->enc_flags & ENC_FLAG_SHUTDOWN) == 0) {
  if (enc->pending_actions == 0) {
   struct intr_config_hook *hook;






   enc->current_action = ENC_UPDATE_NONE;





   hook = &enc->enc_boot_hold_ch;
   if (hook->ich_func != ((void*)0)) {
    config_intrhook_disestablish(hook);
    hook->ich_func = ((void*)0);
   }

   callout_reset(&enc->status_updater, 60*hz,
          enc_status_updater, enc);

   cam_periph_sleep(enc->periph, enc->enc_daemon,
      PUSER, "idle", 0);
  } else {
   enc_fsm_step(enc);
  }
 }
 enc->enc_daemon = ((void*)0);
 cam_periph_unlock(enc->periph);
 cam_periph_release(enc->periph);
 kproc_exit(0);
}
