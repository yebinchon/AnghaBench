
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct evdns_base {int global_max_reissues; int global_max_retransmits; int global_max_nameserver_timeout; int global_randomize_case; int disable_when_inactive; int hostsdb; TYPE_3__ global_nameserver_probe_initial_timeout; TYPE_2__ global_getaddrinfo_allow_skew; int * global_search_state; TYPE_1__ global_timeout; scalar_t__ global_requests_waiting; scalar_t__ global_requests_inflight; scalar_t__ global_good_nameservers; struct event_base* event_base; int * server_head; int * req_heads; int lock; int * req_waiting_head; } ;


 int DNS_OPTIONS_ALL ;
 int EVDNS_BASE_ALL_FLAGS ;
 int EVDNS_BASE_DISABLE_WHEN_INACTIVE ;
 int EVDNS_BASE_INITIALIZE_NAMESERVERS ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_WARN ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int EVTHREAD_ALLOC_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int TAILQ_INIT (int *) ;
 int evdns_base_config_windows_nameservers (struct evdns_base*) ;
 int evdns_base_free_and_unlock (struct evdns_base*,int ) ;
 int evdns_base_resolv_conf_parse (struct evdns_base*,int ,char*) ;
 int evdns_base_set_max_requests_inflight (struct evdns_base*,int) ;
 int evdns_getaddrinfo ;
 scalar_t__ evutil_secure_rng_init () ;
 int evutil_set_evdns_getaddrinfo_fn_ (int ) ;
 int log (int ,char*) ;
 int memset (struct evdns_base*,int ,int) ;
 struct evdns_base* mm_malloc (int) ;

struct evdns_base *
evdns_base_new(struct event_base *event_base, int flags)
{
 struct evdns_base *base;

 if (evutil_secure_rng_init() < 0) {
  log(EVDNS_LOG_WARN, "Unable to seed random number generator; "
      "DNS can't run.");
  return ((void*)0);
 }




 evutil_set_evdns_getaddrinfo_fn_(evdns_getaddrinfo);

 base = mm_malloc(sizeof(struct evdns_base));
 if (base == ((void*)0))
  return (((void*)0));
 memset(base, 0, sizeof(struct evdns_base));
 base->req_waiting_head = ((void*)0);

 EVTHREAD_ALLOC_LOCK(base->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
 EVDNS_LOCK(base);


 base->req_heads = ((void*)0);

 evdns_base_set_max_requests_inflight(base, 64);

 base->server_head = ((void*)0);
 base->event_base = event_base;
 base->global_good_nameservers = base->global_requests_inflight =
  base->global_requests_waiting = 0;

 base->global_timeout.tv_sec = 5;
 base->global_timeout.tv_usec = 0;
 base->global_max_reissues = 1;
 base->global_max_retransmits = 3;
 base->global_max_nameserver_timeout = 3;
 base->global_search_state = ((void*)0);
 base->global_randomize_case = 1;
 base->global_getaddrinfo_allow_skew.tv_sec = 3;
 base->global_getaddrinfo_allow_skew.tv_usec = 0;
 base->global_nameserver_probe_initial_timeout.tv_sec = 10;
 base->global_nameserver_probe_initial_timeout.tv_usec = 0;

 TAILQ_INIT(&base->hostsdb);


 if (flags & ~(0x8001)) {
  flags = EVDNS_BASE_INITIALIZE_NAMESERVERS;
  log(EVDNS_LOG_WARN,
      "Unrecognized flag passed to evdns_base_new(). Assuming "
      "you meant EVDNS_BASE_INITIALIZE_NAMESERVERS.");
 }


 if (flags & EVDNS_BASE_INITIALIZE_NAMESERVERS) {
  int r;



  r = evdns_base_resolv_conf_parse(base, DNS_OPTIONS_ALL, "/etc/resolv.conf");

  if (r == -1) {
   evdns_base_free_and_unlock(base, 0);
   return ((void*)0);
  }
 }
 if (flags & EVDNS_BASE_DISABLE_WHEN_INACTIVE) {
  base->disable_when_inactive = 1;
 }

 EVDNS_UNLOCK(base);
 return base;
}
