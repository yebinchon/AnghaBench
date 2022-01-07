
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int SOCK_EOF_IS_ERROR ;
 int SOCK_RECEIVEALL_YES ;
 int pcap_snprintf (char*,int,char*,char*) ;
 int rpcap_discard (int ,int,char*) ;
 int sock_recv (int ,char*,int,int,char*,int) ;

__attribute__((used)) static void rpcap_msg_err(SOCKET sockctrl, uint32 plen, char *remote_errbuf)
{
 char errbuf[PCAP_ERRBUF_SIZE];

 if (plen >= PCAP_ERRBUF_SIZE)
 {




  if (sock_recv(sockctrl, remote_errbuf, PCAP_ERRBUF_SIZE - 1,
      SOCK_RECEIVEALL_YES|SOCK_EOF_IS_ERROR, errbuf,
      PCAP_ERRBUF_SIZE) == -1)
  {

   pcap_snprintf(remote_errbuf, PCAP_ERRBUF_SIZE, "Read of error message from client failed: %s", errbuf);
   return;
  }




  remote_errbuf[PCAP_ERRBUF_SIZE - 1] = '\0';




  (void)rpcap_discard(sockctrl, plen - (PCAP_ERRBUF_SIZE - 1), remote_errbuf);
 }
 else if (plen == 0)
 {

  remote_errbuf[0] = '\0';
 }
 else
 {
  if (sock_recv(sockctrl, remote_errbuf, plen,
      SOCK_RECEIVEALL_YES|SOCK_EOF_IS_ERROR, errbuf,
      PCAP_ERRBUF_SIZE) == -1)
  {

   pcap_snprintf(remote_errbuf, PCAP_ERRBUF_SIZE, "Read of error message from client failed: %s", errbuf);
   return;
  }




  remote_errbuf[plen] = '\0';
 }
}
