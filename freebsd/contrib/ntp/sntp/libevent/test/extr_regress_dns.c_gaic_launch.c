
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct gaic_request_status {int cancel_event; int request; struct evdns_base* dns_base; struct event_base* base; int magic; } ;
struct event_base {int dummy; } ;
struct evdns_base {int dummy; } ;


 int GAIC_MAGIC ;
 struct gaic_request_status* calloc (int,int) ;
 int evdns_getaddrinfo (struct evdns_base*,char*,char*,int *,int ,struct gaic_request_status*) ;
 int event_add (int *,struct timeval*) ;
 int event_assign (int *,struct event_base*,int,int ,int ,struct gaic_request_status*) ;
 int gaic_cancel_request_cb ;
 int gaic_getaddrinfo_cb ;
 int pending ;
 int tt_assert (struct gaic_request_status*) ;

__attribute__((used)) static void
gaic_launch(struct event_base *base, struct evdns_base *dns_base)
{
 struct gaic_request_status *status = calloc(1, sizeof(*status));
 tt_assert(status);
 struct timeval tv = { 0, 10000 };
 status->magic = GAIC_MAGIC;
 status->base = base;
 status->dns_base = dns_base;
 event_assign(&status->cancel_event, base, -1, 0, gaic_cancel_request_cb,
     status);
 status->request = evdns_getaddrinfo(dns_base,
     "foobar.bazquux.example.com", "80", ((void*)0), gaic_getaddrinfo_cb,
     status);
 event_add(&status->cancel_event, &tv);
 ++pending;
}
