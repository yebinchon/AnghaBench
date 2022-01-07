
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bcm2835_audio_info* ich_arg; int ich_func; } ;
struct bcm2835_audio_info {TYPE_1__ intr_hook; int vchi_handle; int worker_cv; int lock; int bufsz; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int VCHIQ_AUDIO_BUFFER_SIZE ;
 int VCHIQ_SERVICE_HANDLE_INVALID ;
 int bcm2835_audio_delayed_init ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int cv_init (int *,char*) ;
 int device_get_nameunit (int ) ;
 struct bcm2835_audio_info* malloc (int,int ,int) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
bcm2835_audio_attach(device_t dev)
{
     struct bcm2835_audio_info *sc;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);

 sc->dev = dev;
 sc->bufsz = VCHIQ_AUDIO_BUFFER_SIZE;

 mtx_init(&sc->lock, device_get_nameunit(dev),
     "bcm_audio_lock", MTX_DEF);
 cv_init(&sc->worker_cv, "worker_cv");
 sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;





 sc->intr_hook.ich_func = bcm2835_audio_delayed_init;
 sc->intr_hook.ich_arg = sc;

 if (config_intrhook_establish(&sc->intr_hook) != 0)
  goto no;

     return 0;

no:
     return ENXIO;
}
