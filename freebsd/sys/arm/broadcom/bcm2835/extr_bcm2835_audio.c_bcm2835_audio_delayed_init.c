
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_info {int volume; int pch; int dev; int dest; int intr_hook; } ;


 int DEST_AUTO ;
 int PCMDIR_PLAY ;
 int SND_STATUSLEN ;
 int bcm2835_audio_create_worker (struct bcm2835_audio_info*) ;
 int bcm2835_audio_init (struct bcm2835_audio_info*) ;
 int bcm2835_audio_open (struct bcm2835_audio_info*) ;
 int bcm2835_audio_reset_channel (int *) ;
 int bcmchan_class ;
 int bcmmixer_class ;
 int config_intrhook_disestablish (int *) ;
 int device_printf (int ,char*) ;
 scalar_t__ mixer_init (int ,int *,struct bcm2835_audio_info*) ;
 int pcm_addchan (int ,int ,int *,struct bcm2835_audio_info*) ;
 scalar_t__ pcm_register (int ,struct bcm2835_audio_info*,int,int ) ;
 int pcm_setstatus (int ,char*) ;
 int snprintf (char*,int,char*) ;
 int vchi_audio_sysctl_init (struct bcm2835_audio_info*) ;

__attribute__((used)) static void
bcm2835_audio_delayed_init(void *xsc)
{
     struct bcm2835_audio_info *sc;
     char status[SND_STATUSLEN];

 sc = xsc;

 config_intrhook_disestablish(&sc->intr_hook);

 bcm2835_audio_init(sc);
 bcm2835_audio_open(sc);
 sc->volume = 75;
 sc->dest = DEST_AUTO;

     if (mixer_init(sc->dev, &bcmmixer_class, sc)) {
  device_printf(sc->dev, "mixer_init failed\n");
  goto no;
 }

     if (pcm_register(sc->dev, sc, 1, 0)) {
  device_printf(sc->dev, "pcm_register failed\n");
  goto no;
 }

 pcm_addchan(sc->dev, PCMDIR_PLAY, &bcmchan_class, sc);
     snprintf(status, SND_STATUSLEN, "at VCHIQ");
 pcm_setstatus(sc->dev, status);

 bcm2835_audio_reset_channel(&sc->pch);
 bcm2835_audio_create_worker(sc);

 vchi_audio_sysctl_init(sc);

no:
 ;
}
