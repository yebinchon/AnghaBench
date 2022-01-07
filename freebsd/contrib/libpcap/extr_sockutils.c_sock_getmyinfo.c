
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int SOCKET ;


 int getsockname (int ,struct sockaddr*,int*) ;
 int sock_getascii_addrport (struct sockaddr_storage*,char*,int,char*,int,int,char*,int) ;
 int sock_geterror (char*,char*,int) ;

int sock_getmyinfo(SOCKET sock, char *address, int addrlen, char *port, int portlen, int flags, char *errbuf, int errbuflen)
{
 struct sockaddr_storage mysockaddr;
 socklen_t sockaddrlen;


 sockaddrlen = sizeof(struct sockaddr_storage);

 if (getsockname(sock, (struct sockaddr *) &mysockaddr, &sockaddrlen) == -1)
 {
  sock_geterror("getsockname(): ", errbuf, errbuflen);
  return 0;
 }


 return sock_getascii_addrport(&mysockaddr, address, addrlen, port, portlen, flags, errbuf, errbuflen);
}
