
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nameserver {int base; scalar_t__ timedout; int address; int socket; } ;
typedef int ss ;
typedef int packet ;
typedef int ev_socklen_t ;
typedef int addrbuf ;


 int ASSERT_LOCKED (int ) ;
 int EVDNS_LOG_WARN ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 scalar_t__ evutil_sockaddr_cmp (struct sockaddr*,struct sockaddr*,int ) ;
 int evutil_socket_error_to_string (int) ;
 int evutil_socket_geterror (int ) ;
 int log (int ,char*,int ) ;
 int nameserver_failed (struct nameserver*,int ) ;
 int recvfrom (int ,void*,int,int ,struct sockaddr*,int*) ;
 int reply_parse (int ,int *,int const) ;

__attribute__((used)) static void
nameserver_read(struct nameserver *ns) {
 struct sockaddr_storage ss;
 ev_socklen_t addrlen = sizeof(ss);
 u8 packet[1500];
 char addrbuf[128];
 ASSERT_LOCKED(ns->base);

 for (;;) {
  const int r = recvfrom(ns->socket, (void*)packet,
      sizeof(packet), 0,
      (struct sockaddr*)&ss, &addrlen);
  if (r < 0) {
   int err = evutil_socket_geterror(ns->socket);
   if (EVUTIL_ERR_RW_RETRIABLE(err))
    return;
   nameserver_failed(ns,
       evutil_socket_error_to_string(err));
   return;
  }
  if (evutil_sockaddr_cmp((struct sockaddr*)&ss,
   (struct sockaddr*)&ns->address, 0)) {
   log(EVDNS_LOG_WARN, "Address mismatch on received "
       "DNS packet.  Apparent source was %s",
       evutil_format_sockaddr_port_(
        (struct sockaddr *)&ss,
        addrbuf, sizeof(addrbuf)));
   return;
  }

  ns->timedout = 0;
  reply_parse(ns->base, packet, r);
 }
}
