
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* spkt; } ;
typedef TYPE_2__ xmt_ctx ;
typedef int u_int ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef void* evutil_socket_t ;
struct TYPE_10__ {scalar_t__ sched; } ;
struct TYPE_8__ {int addr; } ;


 int DEBUG_INSIST (int) ;
 short EV_TIMEOUT ;
 int TRACE (int,char*) ;
 int UNLINK_HEAD_SLIST (TYPE_2__*,TYPE_3__*,int ) ;
 int UNUSED_ARG (void*) ;
 int base ;
 int ev_xmt_timer ;
 int event_add (int ,struct timeval*) ;
 int free (TYPE_2__*) ;
 struct timeval gap ;
 int gettimeofday_cached (int ,struct timeval*) ;
 int link ;
 scalar_t__ shutting_down ;
 int stoa (int *) ;
 int xmt (TYPE_2__*) ;
 TYPE_3__* xmt_q ;

void
xmt_timer_cb(
 evutil_socket_t fd,
 short what,
 void * ctx
 )
{
 struct timeval start_cb;
 struct timeval delay;
 xmt_ctx * x;

 UNUSED_ARG(fd);
 UNUSED_ARG(ctx);
 DEBUG_INSIST(EV_TIMEOUT == what);

 if (((void*)0) == xmt_q || shutting_down)
  return;
 gettimeofday_cached(base, &start_cb);
 if (xmt_q->sched <= start_cb.tv_sec) {
  UNLINK_HEAD_SLIST(x, xmt_q, link);
  TRACE(2, ("xmt_timer_cb: at .%6.6u -> %s\n",
     (u_int)start_cb.tv_usec, stoa(&x->spkt->addr)));
  xmt(x);
  free(x);
  if (((void*)0) == xmt_q)
   return;
 }
 if (xmt_q->sched <= start_cb.tv_sec) {
  event_add(ev_xmt_timer, &gap);
  TRACE(2, ("xmt_timer_cb: at .%6.6u gap %6.6u\n",
     (u_int)start_cb.tv_usec,
     (u_int)gap.tv_usec));
 } else {
  delay.tv_sec = xmt_q->sched - start_cb.tv_sec;
  delay.tv_usec = 0;
  event_add(ev_xmt_timer, &delay);
  TRACE(2, ("xmt_timer_cb: at .%6.6u next %ld seconds\n",
     (u_int)start_cb.tv_usec,
     (long)delay.tv_sec));
 }
}
