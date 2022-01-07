
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int cc; int * bp; int errbuf; } ;
typedef TYPE_1__ pcap_t ;
typedef int SOCKET ;


 int PCAP_ERRBUF_SIZE ;
 int SOCK_EOF_IS_ERROR ;
 int SOCK_RECEIVEALL_NO ;
 int pcap_snprintf (int ,int ,char*) ;
 int sock_recv (int ,int *,size_t,int,int ,int ) ;

__attribute__((used)) static int rpcap_read_packet_msg(SOCKET sock, pcap_t *p, size_t size)
{
 u_char *bp;
 int cc;
 int bytes_read;

 bp = p->bp;
 cc = p->cc;





 while ((size_t)cc < size)
 {




  bytes_read = sock_recv(sock, bp, size - cc,
      SOCK_RECEIVEALL_NO|SOCK_EOF_IS_ERROR, p->errbuf,
      PCAP_ERRBUF_SIZE);
  if (bytes_read == -1)
  {




   p->bp = bp;
   p->cc = cc;
   return -1;
  }
  if (bytes_read == -3)
  {





   p->bp = bp;
   p->cc = cc;
   return -3;
  }
  if (bytes_read == 0)
  {





   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "The server terminated the connection.");
   return -1;
  }
  bp += bytes_read;
  cc += bytes_read;
 }
 p->bp = bp;
 p->cc = cc;
 return 0;
}
