
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_info {int worker_cv; int flags_pending; } ;


 int AUDIO_PLAY ;
 int AUDIO_STOP ;
 int BCM2835_AUDIO_LOCK (struct bcm2835_audio_info*) ;
 int BCM2835_AUDIO_UNLOCK (struct bcm2835_audio_info*) ;
 int cv_signal (int *) ;

__attribute__((used)) static void
bcm2835_worker_play_stop(struct bcm2835_audio_info *sc)
{
 BCM2835_AUDIO_LOCK(sc);
 sc->flags_pending &= ~(AUDIO_PLAY);
 sc->flags_pending |= AUDIO_STOP;
 cv_signal(&sc->worker_cv);
 BCM2835_AUDIO_UNLOCK(sc);
}
