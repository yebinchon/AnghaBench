
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evutil_socket_t ;
typedef int ev_intptr_t ;
typedef int ch ;


 int fired ;
 int perror (char*) ;
 int recv (scalar_t__,char*,int,int ) ;
 scalar_t__ send (scalar_t__,char*,int,int ) ;

__attribute__((used)) static void
read_cb(evutil_socket_t fd, short which, void *arg)
{
 char ch;
 evutil_socket_t sock = (evutil_socket_t)(ev_intptr_t)arg;

 (void) recv(fd, &ch, sizeof(ch), 0);
 if (sock >= 0) {
  if (send(sock, "e", 1, 0) < 0)
   perror("send");
 }
 fired++;
}
