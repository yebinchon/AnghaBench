
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_addr; int ai_socktype; int ai_family; } ;


 int PF_UNSPEC ;
 int SOCK_DEBUG_MESSAGE (char*) ;
 int SOCK_STREAM ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int pcap_snprintf (char*,int,char*,...) ;
 char* pcap_strtok_r (char*,char const*,char**) ;
 scalar_t__ sock_cmpaddr (struct sockaddr_storage*,struct sockaddr_storage*) ;
 int sock_geterror (char*,char*,int) ;
 char* strdup (char*) ;

int sock_check_hostlist(char *hostlist, const char *sep, struct sockaddr_storage *from, char *errbuf, int errbuflen)
{

 if ((hostlist) && (hostlist[0]))
 {
  char *token;
  struct addrinfo *addrinfo, *ai_next;
  char *temphostlist;
  char *lasts;





  temphostlist = strdup(hostlist);
  if (temphostlist == ((void*)0))
  {
   sock_geterror("sock_check_hostlist(), malloc() failed", errbuf, errbuflen);
   return -2;
  }

  token = pcap_strtok_r(temphostlist, sep, &lasts);


  addrinfo = ((void*)0);

  while (token != ((void*)0))
  {
   struct addrinfo hints;
   int retval;

   addrinfo = ((void*)0);
   memset(&hints, 0, sizeof(struct addrinfo));
   hints.ai_family = PF_UNSPEC;
   hints.ai_socktype = SOCK_STREAM;

   retval = getaddrinfo(token, "0", &hints, &addrinfo);
   if (retval != 0)
   {
    if (errbuf)
     pcap_snprintf(errbuf, errbuflen, "getaddrinfo() %s", gai_strerror(retval));

    SOCK_DEBUG_MESSAGE(errbuf);


    token = pcap_strtok_r(((void*)0), sep, &lasts);
    continue;
   }


   ai_next = addrinfo;
   while (ai_next)
   {
    if (sock_cmpaddr(from, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
    {
     free(temphostlist);
     freeaddrinfo(addrinfo);
     return 0;
    }





    ai_next = ai_next->ai_next;
   }

   freeaddrinfo(addrinfo);
   addrinfo = ((void*)0);


   token = pcap_strtok_r(((void*)0), sep, &lasts);
  }

  if (addrinfo)
  {
   freeaddrinfo(addrinfo);
   addrinfo = ((void*)0);
  }

  if (errbuf)
   pcap_snprintf(errbuf, errbuflen, "The host is not in the allowed host list. Connection refused.");

  free(temphostlist);
  return -1;
 }


 return 1;
}
