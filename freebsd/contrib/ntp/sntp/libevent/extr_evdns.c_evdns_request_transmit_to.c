
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct request {scalar_t__ request_len; int ns; scalar_t__ request; TYPE_1__* base; } ;
struct nameserver {int requests_inflight; int socket; int addrlen; int address; int event; } ;
struct TYPE_2__ {scalar_t__ disable_when_inactive; } ;


 int ASSERT_LOCKED (TYPE_1__*) ;
 int ASSERT_VALID_REQUEST (struct request*) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 scalar_t__ event_add (int *,int *) ;
 int evutil_socket_error_to_string (int) ;
 int evutil_socket_geterror (int ) ;
 int nameserver_failed (int ,int ) ;
 int sendto (int ,void*,scalar_t__,int ,struct sockaddr*,int ) ;

__attribute__((used)) static int
evdns_request_transmit_to(struct request *req, struct nameserver *server) {
 int r;
 ASSERT_LOCKED(req->base);
 ASSERT_VALID_REQUEST(req);

 if (server->requests_inflight == 1 &&
  req->base->disable_when_inactive &&
  event_add(&server->event, ((void*)0)) < 0) {
  return 1;
 }

 r = sendto(server->socket, (void*)req->request, req->request_len, 0,
     (struct sockaddr *)&server->address, server->addrlen);
 if (r < 0) {
  int err = evutil_socket_geterror(server->socket);
  if (EVUTIL_ERR_RW_RETRIABLE(err))
   return 1;
  nameserver_failed(req->ns, evutil_socket_error_to_string(err));
  return 2;
 } else if (r != (int)req->request_len) {
  return 1;
 } else {
  return 0;
 }
}
