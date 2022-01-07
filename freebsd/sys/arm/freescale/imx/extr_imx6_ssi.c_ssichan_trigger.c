
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
 int ssi_start (struct sc_pcminfo*) ;
 int ssi_stop (struct sc_pcminfo*) ;

__attribute__((used)) static int
ssichan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 snd_mtxlock(sc->lock);

 switch (go) {
 case 129:



  ch->run = 1;

  ssi_start(scp);

  break;

 case 128:
 case 130:



  ch->run = 0;

  ssi_stop(scp);

  break;
 }

 snd_mtxunlock(sc->lock);

 return (0);
}
