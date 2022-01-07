
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int32 ;
struct req_pkt {int dummy; } ;
struct info_timer_stats {void* xmtcalls; void* overflows; void* timereset; void* alarms; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 scalar_t__ alarm_overflow ;
 scalar_t__ current_time ;
 int flush_pkt () ;
 void* htonl (int ) ;
 int more_pkt () ;
 scalar_t__ prepare_pkt (int *,int *,struct req_pkt*,int) ;
 scalar_t__ timer_timereset ;
 scalar_t__ timer_xmtcalls ;

__attribute__((used)) static void
timer_stats(
 sockaddr_u * srcadr,
 endpt * inter,
 struct req_pkt * inpkt
 )
{
 struct info_timer_stats * ts;
 u_long sincereset;

 ts = (struct info_timer_stats *)prepare_pkt(srcadr, inter,
          inpkt, sizeof(*ts));

 sincereset = current_time - timer_timereset;
 ts->timereset = htonl((u_int32)sincereset);
 ts->alarms = ts->timereset;
 ts->overflows = htonl((u_int32)alarm_overflow);
 ts->xmtcalls = htonl((u_int32)timer_xmtcalls);

 (void) more_pkt();
 flush_pkt();
}
