
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_audio_info {int dummy; } ;
struct bcm2835_audio_chinfo {int spd; struct bcm2835_audio_info* parent; } ;
typedef int kobj_t ;


 int BCM2835_AUDIO_LOCK (struct bcm2835_audio_info*) ;
 int BCM2835_AUDIO_UNLOCK (struct bcm2835_audio_info*) ;
 int bcm2835_worker_update_params (struct bcm2835_audio_info*) ;

__attribute__((used)) static uint32_t
bcmchan_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct bcm2835_audio_chinfo *ch = data;
 struct bcm2835_audio_info *sc = ch->parent;

 BCM2835_AUDIO_LOCK(sc);
 ch->spd = speed;
 bcm2835_worker_update_params(sc);
 BCM2835_AUDIO_UNLOCK(sc);

 return ch->spd;
}
