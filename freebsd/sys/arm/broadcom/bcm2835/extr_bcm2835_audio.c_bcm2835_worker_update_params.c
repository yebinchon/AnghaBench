
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_info {int worker_cv; int flags_pending; } ;


 int AUDIO_PARAMS ;
 int BCM2835_AUDIO_LOCKED (struct bcm2835_audio_info*) ;
 int cv_signal (int *) ;

__attribute__((used)) static void
bcm2835_worker_update_params(struct bcm2835_audio_info *sc)
{

 BCM2835_AUDIO_LOCKED(sc);

 sc->flags_pending |= AUDIO_PARAMS;
 cv_signal(&sc->worker_cv);
}
