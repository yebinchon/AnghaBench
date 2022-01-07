
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {scalar_t__* h_addr_list; } ;


 struct hostent* gethostbyname (char*) ;
 int inet_aton (char*,struct in_addr*) ;

__attribute__((used)) static int
lookup_host (char *host, struct in_addr *ipaddr)
{
 struct hostent *he;

 if (!inet_aton(host, ipaddr)) {
  if ((he = gethostbyname(host)) == ((void*)0))
   return(-1);
  *ipaddr = *(struct in_addr *)he->h_addr_list[0];
 }
 return(0);
}
