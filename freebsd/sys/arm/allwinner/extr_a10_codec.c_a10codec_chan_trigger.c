
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10codec_info {int lock; } ;
struct a10codec_chinfo {int run; struct a10codec_info* parent; } ;
typedef int kobj_t ;



 int PCMTRIG_COMMON (int) ;


 int a10codec_start (struct a10codec_chinfo*) ;
 int a10codec_stop (struct a10codec_chinfo*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
a10codec_chan_trigger(kobj_t obj, void *data, int go)
{
 struct a10codec_chinfo *ch = data;
 struct a10codec_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return (0);

 snd_mtxlock(sc->lock);
 switch (go) {
 case 129:
  ch->run = 1;
  a10codec_stop(ch);
  a10codec_start(ch);
  break;
 case 128:
 case 130:
  ch->run = 0;
  a10codec_stop(ch);
  break;
 default:
  break;
 }
 snd_mtxunlock(sc->lock);

 return (0);
}
