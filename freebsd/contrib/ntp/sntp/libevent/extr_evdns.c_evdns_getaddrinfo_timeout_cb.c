
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ r; } ;
struct TYPE_5__ {scalar_t__ r; } ;
struct evdns_getaddrinfo_request {int pending_error; int (* user_cb ) (int,int *,int ) ;int user_data; int * pending_result; TYPE_3__* evdns_base; TYPE_2__ ipv6_request; TYPE_1__ ipv4_request; } ;
typedef int evutil_socket_t ;
struct TYPE_7__ {int getaddrinfo_ipv6_timeouts; int getaddrinfo_ipv4_timeouts; } ;


 int EVDNS_LOCK (TYPE_3__*) ;
 int EVDNS_UNLOCK (TYPE_3__*) ;
 int EVUTIL_ASSERT (int) ;
 int EVUTIL_EAI_AGAIN ;
 int add_cname_to_reply (struct evdns_getaddrinfo_request*,int *) ;
 int evdns_cancel_request (int *,scalar_t__) ;
 int free_getaddrinfo_request (struct evdns_getaddrinfo_request*) ;
 int stub1 (int,int *,int ) ;
 int stub2 (int,int *,int ) ;

__attribute__((used)) static void
evdns_getaddrinfo_timeout_cb(evutil_socket_t fd, short what, void *ptr)
{
 int v4_timedout = 0, v6_timedout = 0;
 struct evdns_getaddrinfo_request *data = ptr;


 if (data->ipv4_request.r) {


  evdns_cancel_request(((void*)0), data->ipv4_request.r);
  v4_timedout = 1;
  EVDNS_LOCK(data->evdns_base);
  ++data->evdns_base->getaddrinfo_ipv4_timeouts;
  EVDNS_UNLOCK(data->evdns_base);
 }
 if (data->ipv6_request.r) {


  evdns_cancel_request(((void*)0), data->ipv6_request.r);
  v6_timedout = 1;
  EVDNS_LOCK(data->evdns_base);
  ++data->evdns_base->getaddrinfo_ipv6_timeouts;
  EVDNS_UNLOCK(data->evdns_base);
 }



 EVUTIL_ASSERT(!v4_timedout || !v6_timedout);


 if (data->pending_result) {
  add_cname_to_reply(data, data->pending_result);
  data->user_cb(0, data->pending_result, data->user_data);
  data->pending_result = ((void*)0);
 } else {
  int e = data->pending_error;
  if (!e)
   e = EVUTIL_EAI_AGAIN;
  data->user_cb(e, ((void*)0), data->user_data);
 }

 data->user_cb = ((void*)0);



 if (!v4_timedout && !v6_timedout) {

  free_getaddrinfo_request(data);
 }
}
