
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int* s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int EAFNOSUPPORT ;
 int IN6_IS_ADDR_LINKLOCAL (TYPE_1__*) ;
 int IN6_IS_ADDR_LOOPBACK (TYPE_1__*) ;
 int IN6_IS_ADDR_MULTICAST (TYPE_1__*) ;
 int IN6_IS_ADDR_SITELOCAL (TYPE_1__*) ;
 int errno ;

__attribute__((used)) static int
gai_addr2scopetype(struct sockaddr *sa)
{



 struct sockaddr_in *sa4;

 switch(sa->sa_family) {
 case 129:



  sa4 = (struct sockaddr_in *)sa;

  if (((u_char *)&sa4->sin_addr)[0] == 169 &&
      ((u_char *)&sa4->sin_addr)[1] == 254)
   return(2);

  if (((u_char *)&sa4->sin_addr)[0] == 10 ||
      (((u_char *)&sa4->sin_addr)[0] == 172 &&
       (((u_char *)&sa4->sin_addr)[1] & 0xf0) == 16) ||
      (((u_char *)&sa4->sin_addr)[0] == 192 &&
       ((u_char *)&sa4->sin_addr)[1] == 168))
   return(14);

  if (((u_char *)&sa4->sin_addr)[0] == 127)
   return(2);
  return(14);
  break;
 default:
  errno = EAFNOSUPPORT;
  return(-1);
 }
}
