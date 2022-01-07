
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_fp ;
struct server {scalar_t__* filter_delay; scalar_t__ delay; scalar_t__ dispersion; scalar_t__* filter_soffset; int offset; scalar_t__ soffset; int * filter_offset; } ;
typedef scalar_t__ s_fp ;


 int INSIST (int) ;
 scalar_t__ LFPTOFP (int *) ;
 int L_CLR (int *) ;
 int NTP_SHIFT ;
 scalar_t__ PEER_MAXDISP ;
 int sys_samples ;

__attribute__((used)) static void
clock_filter(
 register struct server *server
 )
{
 register int i, j;
 int ord[NTP_SHIFT];

 INSIST((0 < sys_samples) && (sys_samples <= NTP_SHIFT));




 for (i = 0; i < sys_samples; i++)
  ord[i] = i;

 for (i = 0; i < (sys_samples-1); i++) {
  for (j = i+1; j < sys_samples; j++) {
   if (server->filter_delay[ord[j]] == 0)
    continue;
   if (server->filter_delay[ord[i]] == 0
    || (server->filter_delay[ord[i]]
    > server->filter_delay[ord[j]])) {
    register int tmp;

    tmp = ord[i];
    ord[i] = ord[j];
    ord[j] = tmp;
   }
  }
 }






 if (server->filter_delay[ord[0]] == 0) {
  server->delay = 0;
  L_CLR(&server->offset);
  server->soffset = 0;
  server->dispersion = PEER_MAXDISP;
 } else {
  register s_fp d;

  server->delay = server->filter_delay[ord[0]];
  server->offset = server->filter_offset[ord[0]];
  server->soffset = LFPTOFP(&server->offset);
  server->dispersion = 0;
  for (i = 1; i < sys_samples; i++) {
   if (server->filter_delay[ord[i]] == 0)
    d = PEER_MAXDISP;
   else {
    d = server->filter_soffset[ord[i]]
     - server->filter_soffset[ord[0]];
    if (d < 0)
     d = -d;
    if (d > PEER_MAXDISP)
     d = PEER_MAXDISP;
   }



   server->dispersion += (u_fp)(d) >> i;
  }
 }



}
