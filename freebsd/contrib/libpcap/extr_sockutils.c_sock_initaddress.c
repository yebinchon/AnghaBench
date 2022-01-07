
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_socktype; int ai_addr; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int pcap_snprintf (char*,int,char*,...) ;
 int sock_geterror (char*,char*,int) ;
 scalar_t__ sock_ismcastaddr (int ) ;

int sock_initaddress(const char *host, const char *port,
    struct addrinfo *hints, struct addrinfo **addrinfo, char *errbuf, int errbuflen)
{
 int retval;

 retval = getaddrinfo(host, port, hints, addrinfo);
 if (retval != 0)
 {




  if (errbuf)
  {



   pcap_snprintf(errbuf, errbuflen, "getaddrinfo() %s", gai_strerror(retval));

  }
  return -1;
 }
 if (((*addrinfo)->ai_family != PF_INET) &&
     ((*addrinfo)->ai_family != PF_INET6))
 {
  if (errbuf)
   pcap_snprintf(errbuf, errbuflen, "getaddrinfo(): socket type not supported");
  freeaddrinfo(*addrinfo);
  *addrinfo = ((void*)0);
  return -1;
 }




 if (((*addrinfo)->ai_socktype == SOCK_STREAM) &&
     (sock_ismcastaddr((*addrinfo)->ai_addr) == 0))
 {
  if (errbuf)
   pcap_snprintf(errbuf, errbuflen, "getaddrinfo(): multicast addresses are not valid when using TCP streams");
  freeaddrinfo(*addrinfo);
  *addrinfo = ((void*)0);
  return -1;
 }

 return 0;
}
