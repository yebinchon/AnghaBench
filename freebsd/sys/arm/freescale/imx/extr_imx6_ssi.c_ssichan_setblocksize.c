
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int dma_size; } ;
struct sc_chinfo {int buffer; struct sc_pcminfo* parent; } ;
typedef int kobj_t ;


 int setup_dma (struct sc_pcminfo*) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static uint32_t
ssichan_setblocksize(kobj_t obj, void *data, uint32_t blocksize)
{
 struct sc_chinfo *ch = data;
 struct sc_pcminfo *scp = ch->parent;
 struct sc_info *sc = scp->sc;

 sndbuf_resize(ch->buffer, sc->dma_size / blocksize, blocksize);

 setup_dma(scp);

 return (sndbuf_getblksz(ch->buffer));
}
