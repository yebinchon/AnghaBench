
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct request_info {int started; scalar_t__ n_read; } ;
struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 int EV_READ ;
 int EV_WRITE ;
 scalar_t__ N_REQUESTS ;
 int bufferevent_disable (struct bufferevent*,int) ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int *,int *,int *,int *) ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timeradd (struct timeval*,int *,int *) ;
 int evutil_timersub (struct timeval*,int *,struct timeval*) ;
 int free (struct request_info*) ;
 scalar_t__ launch_request () ;
 int perror (char*) ;
 int printf (char*,int) ;
 int total_n_bytes ;
 int total_n_errors ;
 int total_n_handled ;
 scalar_t__ total_n_launched ;
 int total_time ;

__attribute__((used)) static void
errorcb(struct bufferevent *b, short what, void *arg)
{
 struct request_info *ri = arg;
 struct timeval now, diff;
 if (what & BEV_EVENT_EOF) {
  ++total_n_handled;
  total_n_bytes += ri->n_read;
  evutil_gettimeofday(&now, ((void*)0));
  evutil_timersub(&now, &ri->started, &diff);
  evutil_timeradd(&diff, &total_time, &total_time);

  if (total_n_handled && (total_n_handled%1000)==0)
   printf("%d requests done\n",total_n_handled);

  if (total_n_launched < N_REQUESTS) {
   if (launch_request() < 0)
    perror("Can't launch");
  }
 } else {
  ++total_n_errors;
  perror("Unexpected error");
 }

 bufferevent_setcb(b, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 free(ri);
 bufferevent_disable(b, EV_READ|EV_WRITE);
 bufferevent_free(b);
}
