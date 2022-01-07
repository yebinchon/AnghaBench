
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
typedef TYPE_1__ isc_socketevent_t ;
struct TYPE_6__ {scalar_t__ type; int address; } ;
typedef TYPE_2__ isc_socket_t ;
typedef int isc_sockaddr_t ;


 int INSIST (int ) ;
 scalar_t__ isc_sockettype_tcp ;
 scalar_t__ isc_sockettype_udp ;

__attribute__((used)) static void
set_dev_address(isc_sockaddr_t *address, isc_socket_t *sock,
  isc_socketevent_t *dev)
{
 if (sock->type == isc_sockettype_udp) {
  if (address != ((void*)0))
   dev->address = *address;
  else
   dev->address = sock->address;
 } else if (sock->type == isc_sockettype_tcp) {
  INSIST(address == ((void*)0));
  dev->address = sock->address;
 }
}
