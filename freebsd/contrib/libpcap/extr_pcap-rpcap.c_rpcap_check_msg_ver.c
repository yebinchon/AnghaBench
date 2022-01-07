
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
struct rpcap_header {scalar_t__ ver; int plen; } ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (char*,int ,char*,scalar_t__,scalar_t__) ;
 int rpcap_discard (int ,int ,char*) ;

__attribute__((used)) static int rpcap_check_msg_ver(SOCKET sock, uint8 expected_ver, struct rpcap_header *header, char *errbuf)
{



 if (header->ver != expected_ver)
 {



  if (rpcap_discard(sock, header->plen, errbuf) == -1)
   return -1;




  if (errbuf != ((void*)0))
  {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "Server sent us a message with version %u when we were expecting %u",
       header->ver, expected_ver);
  }
  return -1;
 }
 return 0;
}
