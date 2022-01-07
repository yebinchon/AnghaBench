
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct addrinfo {int ai_family; int * ai_next; int ai_addr; } ;
typedef int hints ;


 scalar_t__ PF_INET ;
 int freeaddrinfo (struct addrinfo*) ;
 int memcpy (struct sockaddr_storage*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int pcap_snprintf (char*,int,char*) ;
 int sock_initaddress (char const*,char*,struct addrinfo*,struct addrinfo**,char*,int) ;

int sock_present2network(const char *address, struct sockaddr_storage *sockaddr, int addr_family, char *errbuf, int errbuflen)
{
 int retval;
 struct addrinfo *addrinfo;
 struct addrinfo hints;

 memset(&hints, 0, sizeof(hints));

 hints.ai_family = addr_family;

 if ((retval = sock_initaddress(address, "22222" , &hints, &addrinfo, errbuf, errbuflen)) == -1)
  return 0;

 if (addrinfo->ai_family == PF_INET)
  memcpy(sockaddr, addrinfo->ai_addr, sizeof(struct sockaddr_in));
 else
  memcpy(sockaddr, addrinfo->ai_addr, sizeof(struct sockaddr_in6));

 if (addrinfo->ai_next != ((void*)0))
 {
  freeaddrinfo(addrinfo);

  if (errbuf)
   pcap_snprintf(errbuf, errbuflen, "More than one socket requested; using the first one returned");
  return -2;
 }

 freeaddrinfo(addrinfo);
 return -1;
}
