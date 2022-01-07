
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_info {scalar_t__ worker_state; int worker_cv; int lock; } ;
typedef int device_t ;


 int BCM2835_AUDIO_LOCK (struct bcm2835_audio_info*) ;
 int BCM2835_AUDIO_UNLOCK (struct bcm2835_audio_info*) ;
 int M_DEVBUF ;
 scalar_t__ WORKER_STOPPED ;
 scalar_t__ WORKER_STOPPING ;
 int bcm2835_audio_release (struct bcm2835_audio_info*) ;
 int cv_destroy (int *) ;
 int cv_signal (int *) ;
 int cv_wait_sig (int *,int *) ;
 int free (struct bcm2835_audio_info*,int ) ;
 int mtx_destroy (int *) ;
 struct bcm2835_audio_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
bcm2835_audio_detach(device_t dev)
{
 int r;
 struct bcm2835_audio_info *sc;
 sc = pcm_getdevinfo(dev);


 BCM2835_AUDIO_LOCK(sc);
 sc->worker_state = WORKER_STOPPING;
 cv_signal(&sc->worker_cv);

 while (sc->worker_state != WORKER_STOPPED)
  cv_wait_sig(&sc->worker_cv, &sc->lock);
 BCM2835_AUDIO_UNLOCK(sc);

 r = pcm_unregister(dev);
 if (r)
  return r;

 mtx_destroy(&sc->lock);
 cv_destroy(&sc->worker_cv);

 bcm2835_audio_release(sc);

     free(sc, M_DEVBUF);

 return 0;
}
