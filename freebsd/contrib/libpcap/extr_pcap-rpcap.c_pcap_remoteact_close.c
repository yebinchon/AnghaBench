
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct rpcap_header {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_addr; int ai_socktype; int ai_family; } ;
struct activehosts {struct activehosts* next; int sockctrl; int protocol_version; int host; } ;


 int PCAP_ERRBUF_SIZE ;
 int PF_UNSPEC ;
 int RPCAP_MSG_CLOSE ;
 int SOCK_STREAM ;
 struct activehosts* activeHosts ;
 int free (struct activehosts*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int ) ;
 int sock_cleanup () ;
 int sock_close (int ,char*,int ) ;
 scalar_t__ sock_cmpaddr (int *,struct sockaddr_storage*) ;
 scalar_t__ sock_send (int ,char*,int,char*,int ) ;

int pcap_remoteact_close(const char *host, char *errbuf)
{
 struct activehosts *temp, *prev;
 struct addrinfo hints, *addrinfo, *ai_next;
 int retval;

 temp = activeHosts;
 prev = ((void*)0);


 addrinfo = ((void*)0);
 memset(&hints, 0, sizeof(struct addrinfo));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;

 retval = getaddrinfo(host, "0", &hints, &addrinfo);
 if (retval != 0)
 {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "getaddrinfo() %s", gai_strerror(retval));
  return -1;
 }

 while (temp)
 {
  ai_next = addrinfo;
  while (ai_next)
  {
   if (sock_cmpaddr(&temp->host, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
   {
    struct rpcap_header header;
    int status = 0;


    rpcap_createhdr(&header, temp->protocol_version,
        RPCAP_MSG_CLOSE, 0, 0);





    if (sock_send(temp->sockctrl,
        (char *)&header,
        sizeof(struct rpcap_header), errbuf,
        PCAP_ERRBUF_SIZE) < 0)
    {




     (void)sock_close(temp->sockctrl, ((void*)0),
        0);
     status = -1;
    }
    else
    {
     if (sock_close(temp->sockctrl, errbuf,
        PCAP_ERRBUF_SIZE) == -1)
      status = -1;
    }





    if (prev)
     prev->next = temp->next;
    else
     activeHosts = temp->next;

    freeaddrinfo(addrinfo);

    free(temp);


    sock_cleanup();

    return status;
   }

   ai_next = ai_next->ai_next;
  }
  prev = temp;
  temp = temp->next;
 }

 if (addrinfo)
  freeaddrinfo(addrinfo);


 sock_cleanup();

 pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "The host you want to close the active connection is not known");
 return -1;
}
