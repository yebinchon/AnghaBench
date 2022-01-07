
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int sock_discard (int ,scalar_t__,char*,int ) ;

__attribute__((used)) static int rpcap_discard(SOCKET sock, uint32 len, char *errbuf)
{
 if (len != 0)
 {
  if (sock_discard(sock, len, errbuf, PCAP_ERRBUF_SIZE) == -1)
  {

   return -1;
  }
 }
 return 0;
}
