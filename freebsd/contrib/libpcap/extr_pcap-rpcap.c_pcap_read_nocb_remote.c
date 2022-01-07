
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int u_char ;
struct timeval {int tv_sec; int tv_usec; } ;
struct rpcap_pkthdr {int caplen; int len; int timestamp_sec; int timestamp_usec; int npkt; } ;
struct rpcap_header {int plen; scalar_t__ type; } ;
struct pcap_rpcap {int rmt_flags; unsigned int TotCapt; int TotNetDrops; int protocol_version; scalar_t__ rmt_sockdata; } ;
struct TYPE_7__ {int tv_sec; int tv_usec; } ;
struct pcap_pkthdr {int caplen; int len; TYPE_2__ ts; } ;
struct TYPE_6__ {int timeout; } ;
struct TYPE_8__ {int bufsize; int errbuf; scalar_t__ cc; scalar_t__ buffer; scalar_t__ bp; TYPE_1__ opt; struct pcap_rpcap* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_OPENFLAG_DATATX_UDP ;
 scalar_t__ RPCAP_MSG_PACKET ;
 scalar_t__ errno ;
 int ntohl (int) ;
 int pcap_snprintf (int ,int ,char*) ;
 int rpcap_check_msg_ver (scalar_t__,int ,struct rpcap_header*,int ) ;
 int rpcap_read_packet_msg (scalar_t__,TYPE_3__*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int sock_geterror (char*,int ,int ) ;
 int sock_recv_dgram (scalar_t__,scalar_t__,int,int ,int ) ;

__attribute__((used)) static int pcap_read_nocb_remote(pcap_t *p, struct pcap_pkthdr *pkt_header, u_char **pkt_data)
{
 struct pcap_rpcap *pr = p->priv;
 struct rpcap_header *header;
 struct rpcap_pkthdr *net_pkt_header;
 u_char *net_pkt_data;
 uint32 plen;
 int retval;
 int msglen;


 struct timeval tv;
 fd_set rfds;





 tv.tv_sec = p->opt.timeout / 1000;
 tv.tv_usec = (p->opt.timeout - tv.tv_sec * 1000) * 1000;


 FD_ZERO(&rfds);





 FD_SET(pr->rmt_sockdata, &rfds);

 retval = select((int) pr->rmt_sockdata + 1, &rfds, ((void*)0), ((void*)0), &tv);
 if (retval == -1)
 {

  if (errno == EINTR)
  {

   return 0;
  }

  sock_geterror("select(): ", p->errbuf, PCAP_ERRBUF_SIZE);
  return -1;
 }


 if (retval == 0)
  return 0;





 header = (struct rpcap_header *) p->buffer;
 net_pkt_header = (struct rpcap_pkthdr *) ((char *)p->buffer + sizeof(struct rpcap_header));
 net_pkt_data = (u_char *)p->buffer + sizeof(struct rpcap_header) + sizeof(struct rpcap_pkthdr);

 if (pr->rmt_flags & PCAP_OPENFLAG_DATATX_UDP)
 {

  msglen = sock_recv_dgram(pr->rmt_sockdata, p->buffer,
      p->bufsize, p->errbuf, PCAP_ERRBUF_SIZE);
  if (msglen == -1)
  {

   return -1;
  }
  if (msglen == -3)
  {

   return 0;
  }
  if ((size_t)msglen < sizeof(struct rpcap_header))
  {



   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "UDP packet message is shorter than an rpcap header");
   return -1;
  }
  plen = ntohl(header->plen);
  if ((size_t)msglen < sizeof(struct rpcap_header) + plen)
  {




   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "UDP packet message is shorter than its rpcap header claims");
   return -1;
  }
 }
 else
 {
  int status;

  if ((size_t)p->cc < sizeof(struct rpcap_header))
  {





   status = rpcap_read_packet_msg(pr->rmt_sockdata, p,
       sizeof(struct rpcap_header));
   if (status == -1)
   {

    return -1;
   }
   if (status == -3)
   {

    return 0;
   }
  }







  plen = ntohl(header->plen);
  if (plen > p->bufsize - sizeof(struct rpcap_header))
  {






   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "Server sent us a message larger than the largest expected packet message");
   return -1;
  }
  status = rpcap_read_packet_msg(pr->rmt_sockdata, p,
      sizeof(struct rpcap_header) + plen);
  if (status == -1)
  {

   return -1;
  }
  if (status == -3)
  {

   return 0;
  }






  p->bp = p->buffer;
  p->cc = 0;
 }




 header->plen = plen;




 if (rpcap_check_msg_ver(pr->rmt_sockdata, pr->protocol_version,
     header, p->errbuf) == -1)
 {
  return 0;
 }




 if (header->type != RPCAP_MSG_PACKET)
 {
  return 0;
 }

 if (ntohl(net_pkt_header->caplen) > plen)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Packet's captured data goes past the end of the received packet message.");
  return -1;
 }


 pkt_header->caplen = ntohl(net_pkt_header->caplen);
 pkt_header->len = ntohl(net_pkt_header->len);
 pkt_header->ts.tv_sec = ntohl(net_pkt_header->timestamp_sec);
 pkt_header->ts.tv_usec = ntohl(net_pkt_header->timestamp_usec);


 *pkt_data = net_pkt_data;





 pr->TotCapt++;

 if (pr->rmt_flags & PCAP_OPENFLAG_DATATX_UDP)
 {
  unsigned int npkt;


  npkt = ntohl(net_pkt_header->npkt);

  if (pr->TotCapt != npkt)
  {
   pr->TotNetDrops += (npkt - pr->TotCapt);
   pr->TotCapt = npkt;
  }
 }


 return 1;
}
