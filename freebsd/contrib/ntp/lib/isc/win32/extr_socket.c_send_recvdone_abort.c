
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int result; } ;
typedef TYPE_1__ isc_socketevent_t ;
struct TYPE_8__ {int recv_list; } ;
typedef TYPE_2__ isc_socket_t ;
typedef int isc_result_t ;


 int ISC_LIST_EMPTY (int ) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int send_recvdone_event (TYPE_2__*,TYPE_1__**) ;

__attribute__((used)) static void
send_recvdone_abort(isc_socket_t *sock, isc_result_t result) {
 isc_socketevent_t *dev;

 while (!ISC_LIST_EMPTY(sock->recv_list)) {
  dev = ISC_LIST_HEAD(sock->recv_list);
  dev->result = result;
  send_recvdone_event(sock, &dev);
 }
}
