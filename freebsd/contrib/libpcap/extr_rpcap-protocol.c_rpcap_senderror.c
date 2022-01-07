
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
struct rpcap_header {int dummy; } ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int RPCAP_MSG_ERROR ;
 int RPCAP_NETBUF_SIZE ;
 int SOCKBUF_BUFFERIZE ;
 int SOCKBUF_CHECKONLY ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,unsigned short,int) ;
 scalar_t__ sock_bufferize (char const*,int,char*,int*,int,int ,char*,int) ;
 scalar_t__ sock_send (int ,char*,int,char*,int) ;
 scalar_t__ strlen (char const*) ;

int
rpcap_senderror(SOCKET sock, uint8 ver, unsigned short errcode, const char *error, char *errbuf)
{
 char sendbuf[RPCAP_NETBUF_SIZE];
 int sendbufidx = 0;
 uint16 length;

 length = (uint16)strlen(error);

 if (length > PCAP_ERRBUF_SIZE)
  length = PCAP_ERRBUF_SIZE;

 rpcap_createhdr((struct rpcap_header *) sendbuf, ver, RPCAP_MSG_ERROR, errcode, length);

 if (sock_bufferize(((void*)0), sizeof(struct rpcap_header), ((void*)0), &sendbufidx,
  RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 if (sock_bufferize(error, length, sendbuf, &sendbufidx,
  RPCAP_NETBUF_SIZE, SOCKBUF_BUFFERIZE, errbuf, PCAP_ERRBUF_SIZE))
  return -1;

 if (sock_send(sock, sendbuf, sendbufidx, errbuf, PCAP_ERRBUF_SIZE) < 0)
  return -1;

 return 0;
}
