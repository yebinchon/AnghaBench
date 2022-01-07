
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gaic_request_status {scalar_t__ magic; int canceled; int base; int request; } ;
typedef int evutil_socket_t ;


 scalar_t__ GAIC_MAGIC ;
 int evdns_getaddrinfo_cancel (int ) ;
 int event_base_loopexit (int ,int *) ;
 int tt_assert (int) ;

__attribute__((used)) static void
gaic_cancel_request_cb(evutil_socket_t fd, short what, void *arg)
{
 struct gaic_request_status *status = arg;

 tt_assert(status->magic == GAIC_MAGIC);
 status->canceled = 1;
 evdns_getaddrinfo_cancel(status->request);
 return;
end:
 event_base_loopexit(status->base, ((void*)0));
}
