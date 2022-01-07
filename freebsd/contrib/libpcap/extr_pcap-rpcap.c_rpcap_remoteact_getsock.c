
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_addr; int ai_socktype; int ai_family; } ;
struct activehosts {struct activehosts* next; int host; } ;


 int PCAP_ERRBUF_SIZE ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 struct activehosts* activeHosts ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int pcap_snprintf (char*,int ,char*,int ) ;
 scalar_t__ sock_cmpaddr (int *,struct sockaddr_storage*) ;

__attribute__((used)) static struct activehosts *
rpcap_remoteact_getsock(const char *host, int *error, char *errbuf)
{
 struct activehosts *temp;
 struct addrinfo hints, *addrinfo, *ai_next;
 int retval;


 addrinfo = ((void*)0);
 memset(&hints, 0, sizeof(struct addrinfo));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;

 retval = getaddrinfo(host, "0", &hints, &addrinfo);
 if (retval != 0)
 {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "getaddrinfo() %s",
      gai_strerror(retval));
  *error = 1;
  return ((void*)0);
 }

 temp = activeHosts;

 while (temp)
 {
  ai_next = addrinfo;
  while (ai_next)
  {
   if (sock_cmpaddr(&temp->host, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
   {
    *error = 0;
    freeaddrinfo(addrinfo);
    return temp;
   }

   ai_next = ai_next->ai_next;
  }
  temp = temp->next;
 }

 if (addrinfo)
  freeaddrinfo(addrinfo);





 *error = 0;
 return ((void*)0);
}
