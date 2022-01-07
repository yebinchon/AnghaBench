
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr {int dummy; } ;
struct nameserver {int state; int failed_times; int address; int timeout_event; TYPE_1__* base; } ;
typedef int addrbuf ;
struct TYPE_2__ {int global_nameserver_probe_initial_timeout; } ;


 int ASSERT_LOCKED (TYPE_1__*) ;
 int EVDNS_LOG_WARN ;
 int MAX_PROBE_TIMEOUT ;
 int TIMEOUT_BACKOFF_FACTOR ;
 scalar_t__ evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int log (int ,char*,int ) ;
 int memcpy (struct timeval*,int *,int) ;

__attribute__((used)) static void
nameserver_probe_failed(struct nameserver *const ns) {
 struct timeval timeout;
 int i;

 ASSERT_LOCKED(ns->base);
 (void) evtimer_del(&ns->timeout_event);
 if (ns->state == 1) {


  return;
 }




 memcpy(&timeout, &ns->base->global_nameserver_probe_initial_timeout,
     sizeof(struct timeval));
 for (i=ns->failed_times; i > 0 && timeout.tv_sec < 3600; --i) {
  timeout.tv_sec *= 3;
  timeout.tv_usec *= 3;
  if (timeout.tv_usec > 1000000) {
   timeout.tv_sec += timeout.tv_usec / 1000000;
   timeout.tv_usec %= 1000000;
  }
 }
 if (timeout.tv_sec > 3600) {
  timeout.tv_sec = 3600;
  timeout.tv_usec = 0;
 }

 ns->failed_times++;

 if (evtimer_add(&ns->timeout_event, &timeout) < 0) {
  char addrbuf[128];
  log(EVDNS_LOG_WARN,
      "Error from libevent when adding timer event for %s",
      evutil_format_sockaddr_port_(
       (struct sockaddr *)&ns->address,
       addrbuf, sizeof(addrbuf)));
 }
}
