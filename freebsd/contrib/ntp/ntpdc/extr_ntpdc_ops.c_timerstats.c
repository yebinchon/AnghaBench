
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct parse {int dummy; } ;
struct info_timer_stats {int xmtcalls; int overflows; int alarms; int timereset; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int REQ_TIMER_STATS ;
 int check1item (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,int ,int ,int *,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,int ) ;
 scalar_t__ impl_ver ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
timerstats(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_timer_stats *tim;
 size_t items;
 size_t itemsize;
 int res;

again:
 res = doquery(impl_ver, REQ_TIMER_STATS, 0, 0, 0, ((void*)0), &items,
        &itemsize, (void *)&tim, 0, sizeof(*tim));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!check1item(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(*tim)))
  return;

 fprintf(fp, "time since reset:  %lu\n",
  (u_long)ntohl(tim->timereset));
 fprintf(fp, "alarms handled:    %lu\n",
  (u_long)ntohl(tim->alarms));
 fprintf(fp, "alarm overruns:    %lu\n",
  (u_long)ntohl(tim->overflows));
 fprintf(fp, "calls to transmit: %lu\n",
  (u_long)ntohl(tim->xmtcalls));
}
