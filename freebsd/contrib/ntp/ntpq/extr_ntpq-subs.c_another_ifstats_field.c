
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int ifnum; char* name; int flags; int ttl; int mcast_count; int received; int sent; int send_errors; int peer_count; int uptime; int bcast; int addr; scalar_t__ enabled; } ;
typedef TYPE_1__ ifstats_row ;
typedef int FILE ;


 int IFSTATS_FIELDS ;
 int SOCK_UNSPEC (int *) ;
 int ZERO (TYPE_1__) ;
 int fprintf (int *,char*,...) ;
 char* sptoa (int *) ;

__attribute__((used)) static void
another_ifstats_field(
 int * pfields,
 ifstats_row * prow,
 FILE * fp
 )
{
 u_int ifnum;

 (*pfields)++;

 if (IFSTATS_FIELDS > *pfields)
  return;





 fprintf(fp,
  "%3u %-24.24s %c %4x %3u %2u %6u %6u %6u %5u %8d\n"
  "    %s\n",
  prow->ifnum, prow->name,
  (prow->enabled)
      ? '.'
      : 'D',
  prow->flags, prow->ttl, prow->mcast_count,
  prow->received, prow->sent, prow->send_errors,
  prow->peer_count, prow->uptime, sptoa(&prow->addr));
 if (!SOCK_UNSPEC(&prow->bcast))
  fprintf(fp, "    %s\n", sptoa(&prow->bcast));
 ifnum = prow->ifnum;
 ZERO(*prow);
 prow->ifnum = ifnum;
}
