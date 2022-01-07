
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_softc {int device_id; } ;
struct edma_channel {int enabled; int mux_num; int mux_src; int mux_chn; } ;


 int NCHAN_PER_MUX ;
 int dmamux_configure (int,int,int,int) ;
 struct edma_channel* edma_map ;

__attribute__((used)) static int
channel_configure(struct edma_softc *sc, int mux_grp, int mux_src)
{
 struct edma_channel *ch;
 int channel_first;
 int mux_num;
 int chnum;
 int i;

 if ((sc->device_id == 0 && mux_grp == 1) || (sc->device_id == 1 && mux_grp == 0)) {

  channel_first = NCHAN_PER_MUX;
  mux_num = (sc->device_id * 2) + 1;
 } else {
  channel_first = 0;
  mux_num = sc->device_id * 2;
 }


 ch = ((void*)0);
 for (i = channel_first; i < (channel_first + NCHAN_PER_MUX); i++) {
  ch = &edma_map[i];
  if (ch->enabled == 0) {
   break;
  }
  ch = ((void*)0);
 }

 if (ch == ((void*)0)) {

  return (-1);
 }

 chnum = i;

 ch->enabled = 1;
 ch->mux_num = mux_num;
 ch->mux_src = mux_src;
 ch->mux_chn = (chnum - channel_first);

 dmamux_configure(ch->mux_num, ch->mux_src, ch->mux_chn, 1);

 return (chnum);
}
