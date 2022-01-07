
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int dummy; } ;
struct edma_channel {int mux_chn; int mux_src; int mux_num; scalar_t__ enabled; } ;


 int dmamux_configure (int ,int ,int ,int ) ;
 struct edma_channel* edma_map ;

__attribute__((used)) static int
channel_free(struct edma_softc *sc, int chnum)
{
 struct edma_channel *ch;

 ch = &edma_map[chnum];
 ch->enabled = 0;

 dmamux_configure(ch->mux_num, ch->mux_src, ch->mux_chn, 0);

 return (0);
}
