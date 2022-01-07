
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef unsigned char u_char ;
struct pcap_pkthdr {int caplen; int len; int ts; } ;
struct pcap_netfilter {int packets_read; int packets_nobufs; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_type; } ;
struct nfqnl_msg_packet_hdr {int packet_id; } ;
struct nfgenmsg {int res_id; } ;
typedef struct nfattr const nfattr ;
struct TYPE_5__ {int * bf_insns; } ;
struct TYPE_6__ {int cc; unsigned char* bp; scalar_t__ linktype; TYPE_1__ fcode; int errbuf; scalar_t__ break_loop; scalar_t__ buffer; int bufsize; int fd; struct pcap_netfilter* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int (* pcap_handler ) (unsigned char*,struct pcap_pkthdr*,unsigned char const*) ;
typedef scalar_t__ nftype_t ;


 scalar_t__ DLT_NFLOG ;
 scalar_t__ EINTR ;
 scalar_t__ ENOBUFS ;
 int HDR_LENGTH ;
 unsigned char* NFA_DATA (struct nfattr const*) ;
 struct nfattr const* NFA_NEXT (struct nfattr const*,int) ;
 scalar_t__ NFA_OK (struct nfattr const*,int) ;
 int NFA_PAYLOAD (struct nfattr const*) ;
 int NFA_TYPE (struct nfattr const*) ;
 scalar_t__ NFLOG ;
 struct nfattr const* NFM_NFA (struct nfgenmsg const*) ;
 scalar_t__ NFNL_MSG_TYPE (int ) ;
 scalar_t__ NFNL_SUBSYS_ID (int ) ;
 scalar_t__ NFNL_SUBSYS_QUEUE ;
 scalar_t__ NFNL_SUBSYS_ULOG ;


 scalar_t__ NFQNL_MSG_PACKET ;
 scalar_t__ NFQUEUE ;

 scalar_t__ NFULNL_MSG_PACKET ;
 int NF_ACCEPT ;
 int NLMSG_ALIGN (int) ;
 void* NLMSG_DATA (struct nlmsghdr const*) ;
 int NLMSG_SPACE (int ) ;
 scalar_t__ OTHER ;
 int PACKET_COUNT_IS_UNLIMITED (int) ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_BREAK ;
 scalar_t__ bpf_filter (int *,unsigned char const*,int ,int ) ;
 scalar_t__ errno ;
 int gettimeofday (int *,int *) ;
 int nfqueue_send_verdict (TYPE_2__*,int ,int,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int pcap_snprintf (int ,int ,char*,int,...) ;
 int recv (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
netfilter_read_linux(pcap_t *handle, int max_packets, pcap_handler callback, u_char *user)
{
 struct pcap_netfilter *handlep = handle->priv;
 register u_char *bp, *ep;
 int count = 0;
 int len;




 if (handle->break_loop) {





  handle->break_loop = 0;
  return PCAP_ERROR_BREAK;
 }
 len = handle->cc;
 if (len == 0) {
  do {
   len = recv(handle->fd, handle->buffer, handle->bufsize, 0);
   if (handle->break_loop) {
    handle->break_loop = 0;
    return PCAP_ERROR_BREAK;
   }
   if (errno == ENOBUFS)
    handlep->packets_nobufs++;
  } while ((len == -1) && (errno == EINTR || errno == ENOBUFS));

  if (len < 0) {
   pcap_fmt_errmsg_for_errno(handle->errbuf,
       PCAP_ERRBUF_SIZE, errno, "Can't receive packet");
   return PCAP_ERROR;
  }

  bp = (unsigned char *)handle->buffer;
 } else
  bp = handle->bp;
 ep = bp + len;
 while (bp < ep) {
  const struct nlmsghdr *nlh = (const struct nlmsghdr *) bp;
  uint32_t msg_len;
  nftype_t type = OTHER;
  if (handle->break_loop) {
   handle->bp = bp;
   handle->cc = ep - bp;
   if (count == 0) {
    handle->break_loop = 0;
    return PCAP_ERROR_BREAK;
   } else
    return count;
  }
  if (ep - bp < NLMSG_SPACE(0)) {




   break;
  }

  if (nlh->nlmsg_len < sizeof(struct nlmsghdr) || (u_int)len < nlh->nlmsg_len) {
   pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE, "Message truncated: (got: %d) (nlmsg_len: %u)", len, nlh->nlmsg_len);
   return -1;
  }

  if (NFNL_SUBSYS_ID(nlh->nlmsg_type) == NFNL_SUBSYS_ULOG &&
      NFNL_MSG_TYPE(nlh->nlmsg_type) == NFULNL_MSG_PACKET)
   type = NFLOG;
  else if (NFNL_SUBSYS_ID(nlh->nlmsg_type) == NFNL_SUBSYS_QUEUE &&
           NFNL_MSG_TYPE(nlh->nlmsg_type) == NFQNL_MSG_PACKET)
   type = NFQUEUE;

  if (type != OTHER) {
   const unsigned char *payload = ((void*)0);
   struct pcap_pkthdr pkth;

   const struct nfgenmsg *nfg = ((void*)0);
   int id = 0;

   if (handle->linktype != DLT_NFLOG) {
    const struct nfattr *payload_attr = ((void*)0);

    if (nlh->nlmsg_len < HDR_LENGTH) {
     pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE, "Malformed message: (nlmsg_len: %u)", nlh->nlmsg_len);
     return -1;
    }

    nfg = NLMSG_DATA(nlh);
    if (nlh->nlmsg_len > HDR_LENGTH) {
     struct nfattr *attr = NFM_NFA(nfg);
     int attr_len = nlh->nlmsg_len - NLMSG_ALIGN(HDR_LENGTH);

     while (NFA_OK(attr, attr_len)) {
      if (type == NFQUEUE) {
       switch (NFA_TYPE(attr)) {
        case 130:
         {
          const struct nfqnl_msg_packet_hdr *pkt_hdr = (const struct nfqnl_msg_packet_hdr *) NFA_DATA(attr);

          id = ntohl(pkt_hdr->packet_id);
          break;
         }
        case 129:
         payload_attr = attr;
         break;
       }

      } else if (type == NFLOG) {
       switch (NFA_TYPE(attr)) {
        case 128:
         payload_attr = attr;
         break;
       }
      }
      attr = NFA_NEXT(attr, attr_len);
     }
    }

    if (payload_attr) {
     payload = NFA_DATA(payload_attr);
     pkth.len = pkth.caplen = NFA_PAYLOAD(payload_attr);
    }

   } else {
    payload = NLMSG_DATA(nlh);
    pkth.caplen = pkth.len = nlh->nlmsg_len-NLMSG_ALIGN(sizeof(struct nlmsghdr));
   }

   if (payload) {


    gettimeofday(&pkth.ts, ((void*)0));
    if (handle->fcode.bf_insns == ((void*)0) ||
      bpf_filter(handle->fcode.bf_insns, payload, pkth.len, pkth.caplen))
    {
     handlep->packets_read++;
     callback(user, &pkth, payload);
     count++;
    }
   }

   if (type == NFQUEUE) {



    if (nfg != ((void*)0))
     nfqueue_send_verdict(handle, ntohs(nfg->res_id), id, NF_ACCEPT);
   }
  }

  msg_len = NLMSG_ALIGN(nlh->nlmsg_len);





  if (msg_len > ep - bp)
   msg_len = ep - bp;

  bp += msg_len;
  if (count >= max_packets && !PACKET_COUNT_IS_UNLIMITED(max_packets)) {
   handle->bp = bp;
   handle->cc = ep - bp;
   if (handle->cc < 0)
    handle->cc = 0;
   return count;
  }
 }

 handle->cc = 0;
 return count;
}
