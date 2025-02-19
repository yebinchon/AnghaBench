
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int NI_NUMERICHOST ;
 int SOCKET_NAME_NULL_DAD ;
 int SOCKET_NO_NAME_AVAILABLE ;
 int SOCKET_NO_PORT_AVAILABLE ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int sock_geterror (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;

int sock_getascii_addrport(const struct sockaddr_storage *sockaddr, char *address, int addrlen, char *port, int portlen, int flags, char *errbuf, int errbuflen)
{
 socklen_t sockaddrlen;
 int retval;

 retval = -1;







 sockaddrlen = sizeof(struct sockaddr_storage);


 if ((flags & NI_NUMERICHOST) == 0)
 {
  if ((sockaddr->ss_family == AF_INET6) &&
   (memcmp(&((struct sockaddr_in6 *) sockaddr)->sin6_addr, "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", sizeof(struct in6_addr)) == 0))
  {
   if (address)
    strlcpy(address, SOCKET_NAME_NULL_DAD, addrlen);
   return retval;
  }
 }

 if (getnameinfo((struct sockaddr *) sockaddr, sockaddrlen, address, addrlen, port, portlen, flags) != 0)
 {

  if (errbuf)
  {
   sock_geterror("getnameinfo(): ", errbuf, errbuflen);
   errbuf[errbuflen - 1] = 0;
  }

  if (address)
  {
   strlcpy(address, SOCKET_NO_NAME_AVAILABLE, addrlen);
   address[addrlen - 1] = 0;
  }

  if (port)
  {
   strlcpy(port, SOCKET_NO_PORT_AVAILABLE, portlen);
   port[portlen - 1] = 0;
  }

  retval = 0;
 }

 return retval;
}
