
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef scalar_t__ u_fp ;
struct TYPE_4__ {scalar_t__ l_ui; } ;
struct TYPE_3__ {scalar_t__ l_ui; } ;
struct server {scalar_t__ stratum; scalar_t__ delay; scalar_t__ leap; scalar_t__ trust; int dispersion; int soffset; int precision; int srcadr; TYPE_2__ reftime; TYPE_1__ org; struct server* next_server; } ;
typedef int s_fp ;


 int FP_SECOND ;
 scalar_t__ LEAP_NOTINSYNC ;
 int L_ISHIS (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ NTPDATE_PRECISION ;
 scalar_t__ NTP_INFIN ;
 scalar_t__ NTP_MAXAGE ;
 int NTP_MAXCLOCK ;
 size_t NTP_MAXLIST ;
 int NTP_MAXSKW ;
 scalar_t__ NTP_MAXWGT ;
 scalar_t__ debug ;
 char* ntoa (int *) ;
 int printf (char*,char*) ;
 struct server* sys_servers ;

__attribute__((used)) static struct server *
clock_select(void)
{
 struct server *server;
 u_int nlist;
 s_fp d;
 u_int count;
 u_int i;
 u_int j;
 u_int k;
 int n;
 s_fp local_threshold;
 struct server *server_list[NTP_MAXCLOCK];
 u_fp server_badness[NTP_MAXCLOCK];
 struct server *sys_server;
 nlist = 0;
 for (server = sys_servers; server != ((void*)0); server = server->next_server) {
  if (server->stratum == 0) {
   if (debug)
    printf("%s: Server dropped: no data\n", ntoa(&server->srcadr));
   continue;
  }
  if (server->stratum > NTP_INFIN) {
   if (debug)
    printf("%s: Server dropped: strata too high\n", ntoa(&server->srcadr));
   continue;
  }
  if (server->delay > NTP_MAXWGT) {
   if (debug)
    printf("%s: Server dropped: server too far away\n",
     ntoa(&server->srcadr));
   continue;
  }
  if (server->leap == LEAP_NOTINSYNC) {
   if (debug)
    printf("%s: Server dropped: leap not in sync\n", ntoa(&server->srcadr));
   continue;
  }
  if (!L_ISHIS(&server->org, &server->reftime)) {
   if (debug)
    printf("%s: Server dropped: server is very broken\n",
           ntoa(&server->srcadr));
   continue;
  }
  if ((server->org.l_ui - server->reftime.l_ui)
      >= NTP_MAXAGE) {
   if (debug)
    printf("%s: Server dropped: server has gone too long without sync\n",
           ntoa(&server->srcadr));
   continue;
  }
  if (server->trust != 0) {
   if (debug)
    printf("%s: Server dropped: Server is untrusted\n",
           ntoa(&server->srcadr));
   continue;
  }





  d = server->dispersion + server->dispersion;
  for (i = 0; i < nlist; i++)
   if (server->stratum <= server_list[i]->stratum)
   break;
  for ( ; i < nlist; i++) {
   if (server->stratum < server_list[i]->stratum)
    break;
   if (d < (s_fp) server_badness[i])
    break;
  }





  if (i >= NTP_MAXLIST)
   continue;
  for (j = nlist; j > i; j--)
   if (j < NTP_MAXLIST) {
    server_list[j] = server_list[j-1];
    server_badness[j]
     = server_badness[j-1];
   }

  server_list[i] = server;
  server_badness[i] = d;
  if (nlist < NTP_MAXLIST)
   nlist++;
 }





 count = 0;
 for (i = 1; i < nlist; i++)
  if (server_list[i]->stratum > server_list[i-1]->stratum) {
   count++;
   if (2 == count) {
    nlist = i;
    break;
   }
  }
 if (0 == nlist)
  sys_server = ((void*)0);
 else if (1 == nlist) {
  sys_server = server_list[0];
 } else {




  for (i = 0; i < nlist-1; i++)
   for (j = i+1; j < nlist; j++) {
    if (server_list[i]->stratum <
        server_list[j]->stratum)

     break;
    if (server_list[i]->delay <
        server_list[j]->delay)
     continue;
    server = server_list[i];
    server_list[i] = server_list[j];
    server_list[j] = server;
   }




  local_threshold = (FP_SECOND >> (-(int)NTPDATE_PRECISION))
   + NTP_MAXSKW;




  while (nlist > 1) {
   for (k = 0; k < nlist; k++) {
    server_badness[k] = 0;
    for (j = 0; j < nlist; j++) {
     if (j == k)
      continue;
     d = server_list[j]->soffset -
         server_list[k]->soffset;
     if (d < 0)
      d = -d;




     for (i = 0; i < j; i++)
      d = (d>>1) + (d>>2);
     server_badness[k] += d;
    }
   }







   i = 0;
   n = server_list[0]->precision;;
   for (j = 1; j < nlist; j++) {
    if (server_badness[j] >= server_badness[i])
     i = j;
    if (n > server_list[j]->precision)
     n = server_list[j]->precision;
   }







   if ( (s_fp) server_badness[i] < (local_threshold
        + (FP_SECOND >> (-n))))
    break;
   for (j = i + 1; j < nlist; j++)
    server_list[j-1] = server_list[j];
   nlist--;
  }





  sys_server = server_list[0];
 }




 return sys_server;
}
