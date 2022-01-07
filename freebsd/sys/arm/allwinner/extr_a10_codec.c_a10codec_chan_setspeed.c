
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10codec_chinfo {int speed; int dir; } ;
typedef int kobj_t ;


 int PCMDIR_PLAY ;

__attribute__((used)) static uint32_t
a10codec_chan_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct a10codec_chinfo *ch = data;






 switch (speed) {
 case 8000:
 case 12000:
 case 16000:
 case 24000:
 case 32000:
 case 48000:
  ch->speed = speed;
  break;
 case 96000:
 case 192000:

  if (ch->dir == PCMDIR_PLAY) {
   ch->speed = speed;
  } else {
   ch->speed = 48000;
  }
  break;
 case 44100:
  ch->speed = 48000;
  break;
 case 22050:
  ch->speed = 24000;
  break;
 case 11025:
  ch->speed = 12000;
  break;
 default:
  ch->speed = 48000;
  break;
 }

 return (ch->speed);
}
