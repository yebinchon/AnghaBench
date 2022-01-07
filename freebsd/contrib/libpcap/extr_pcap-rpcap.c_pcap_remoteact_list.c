
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct activehosts {struct activehosts* next; int host; } ;


 int NI_NUMERICHOST ;
 int PCAP_ERRBUF_SIZE ;
 int RPCAP_HOSTLIST_SIZE ;
 struct activehosts* activeHosts ;
 int pcap_snprintf (char*,int ,char*) ;
 int sock_getascii_addrport (struct sockaddr_storage*,char*,int ,int *,int ,int ,char*,int ) ;
 int strlcat (char*,char*,int ) ;
 size_t strlen (char*) ;

int pcap_remoteact_list(char *hostlist, char sep, int size, char *errbuf)
{
 struct activehosts *temp;
 size_t len;
 char hoststr[RPCAP_HOSTLIST_SIZE + 1];

 temp = activeHosts;

 len = 0;
 *hostlist = 0;

 while (temp)
 {



  if (sock_getascii_addrport((struct sockaddr_storage *) &temp->host, hoststr,
   RPCAP_HOSTLIST_SIZE, ((void*)0), 0, NI_NUMERICHOST, errbuf, PCAP_ERRBUF_SIZE) != -1)


  {

   return -1;
  }

  len = len + strlen(hoststr) + 1 ;

  if ((size < 0) || (len >= (size_t)size))
  {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "The string you provided is not able to keep "
    "the hostnames for all the active connections");
   return -1;
  }

  strlcat(hostlist, hoststr, PCAP_ERRBUF_SIZE);
  hostlist[len - 1] = sep;
  hostlist[len] = 0;

  temp = temp->next;
 }

 return 0;
}
