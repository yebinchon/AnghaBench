
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct bcm2835_audio_info {TYPE_1__ pch; } ;
struct bcm2835_audio_chinfo {int retrieved_samples; int submitted_samples; struct bcm2835_audio_info* parent; } ;
typedef int kobj_t ;



 int PCMTRIG_COMMON (int) ;


 int bcm2835_worker_play_start (struct bcm2835_audio_info*) ;
 int bcm2835_worker_play_stop (struct bcm2835_audio_info*) ;
 int chn_intr (int ) ;

__attribute__((used)) static int
bcmchan_trigger(kobj_t obj, void *data, int go)
{
 struct bcm2835_audio_chinfo *ch = data;
 struct bcm2835_audio_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return (0);

 switch (go) {
 case 129:

  chn_intr(sc->pch.channel);
  ch->submitted_samples = 0;
  ch->retrieved_samples = 0;
  bcm2835_worker_play_start(sc);
  break;

 case 128:
 case 130:
  bcm2835_worker_play_stop(sc);
  break;

 default:
  break;
 }
 return 0;
}
