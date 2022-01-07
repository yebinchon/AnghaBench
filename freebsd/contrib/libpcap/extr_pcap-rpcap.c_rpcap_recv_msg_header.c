
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcap_header {int plen; } ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int SOCK_EOF_IS_ERROR ;
 int SOCK_RECEIVEALL_YES ;
 int ntohl (int ) ;
 int sock_recv (int ,char*,int,int,char*,int ) ;

__attribute__((used)) static int rpcap_recv_msg_header(SOCKET sock, struct rpcap_header *header, char *errbuf)
{
 int nrecv;

 nrecv = sock_recv(sock, (char *) header, sizeof(struct rpcap_header),
     SOCK_RECEIVEALL_YES|SOCK_EOF_IS_ERROR, errbuf,
     PCAP_ERRBUF_SIZE);
 if (nrecv == -1)
 {

  return -1;
 }
 header->plen = ntohl(header->plen);
 return 0;
}
