
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {int dev; struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct sc_chinfo {int run; struct sc_pcminfo* parent; } ;
typedef int kobj_t ;





 int device_printf (int ,char*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
saichan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_pcminfo *scp = ch->parent;
 struct sc_info *sc = scp->sc;

 snd_mtxlock(sc->lock);

 switch (go) {
 case 129:



  ch->run = 1;
  break;

 case 128:
 case 130:



  ch->run = 0;
  break;
 }

 snd_mtxunlock(sc->lock);

 return (0);
}
