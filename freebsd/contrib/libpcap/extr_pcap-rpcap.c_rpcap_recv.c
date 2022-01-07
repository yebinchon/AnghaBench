
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32 ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int SOCK_EOF_IS_ERROR ;
 int SOCK_RECEIVEALL_YES ;
 int pcap_snprintf (char*,int ,char*) ;
 int sock_recv (int ,void*,size_t,int,char*,int ) ;

__attribute__((used)) static int rpcap_recv(SOCKET sock, void *buffer, size_t toread, uint32 *plen, char *errbuf)
{
 int nread;

 if (toread > *plen)
 {

  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "Message payload is too short");
  return -1;
 }
 nread = sock_recv(sock, buffer, toread,
     SOCK_RECEIVEALL_YES|SOCK_EOF_IS_ERROR, errbuf, PCAP_ERRBUF_SIZE);
 if (nread == -1)
 {
  return -1;
 }
 *plen -= nread;
 return 0;
}
