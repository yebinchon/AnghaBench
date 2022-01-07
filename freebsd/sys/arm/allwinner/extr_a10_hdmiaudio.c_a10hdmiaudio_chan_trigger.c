
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10hdmiaudio_info {int lock; } ;
struct a10hdmiaudio_chinfo {int run; struct a10hdmiaudio_info* parent; } ;
typedef int kobj_t ;



 int PCMTRIG_COMMON (int) ;


 int a10hdmiaudio_start (struct a10hdmiaudio_chinfo*) ;
 int a10hdmiaudio_stop (struct a10hdmiaudio_chinfo*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
a10hdmiaudio_chan_trigger(kobj_t obj, void *data, int go)
{
 struct a10hdmiaudio_chinfo *ch = data;
 struct a10hdmiaudio_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return (0);

 snd_mtxlock(sc->lock);
 switch (go) {
 case 129:
  ch->run = 1;
  a10hdmiaudio_start(ch);
  break;
 case 128:
 case 130:
  ch->run = 0;
  a10hdmiaudio_stop(ch);
  break;
 default:
  break;
 }
 snd_mtxunlock(sc->lock);

 return (0);
}
