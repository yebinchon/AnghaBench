
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;
typedef int u_fp ;
struct server {size_t filter_nextpt; int * filter_error; int * filter_soffset; int * filter_offset; int * filter_delay; } ;
typedef int s_fp ;
typedef int l_fp ;


 int LFPTOFP (int *) ;
 size_t NTP_SHIFT ;

__attribute__((used)) static void
server_data(
 register struct server *server,
 s_fp d,
 l_fp *c,
 u_fp e
 )
{
 u_short i;

 i = server->filter_nextpt;
 if (i < NTP_SHIFT) {
  server->filter_delay[i] = d;
  server->filter_offset[i] = *c;
  server->filter_soffset[i] = LFPTOFP(c);
  server->filter_error[i] = e;
  server->filter_nextpt = (u_short)(i + 1);
 }
}
