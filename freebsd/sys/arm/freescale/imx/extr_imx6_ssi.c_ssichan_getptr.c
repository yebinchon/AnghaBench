
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int pos; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
typedef int kobj_t ;



__attribute__((used)) static uint32_t
ssichan_getptr(kobj_t obj, void *data)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 return (sc->pos);
}
