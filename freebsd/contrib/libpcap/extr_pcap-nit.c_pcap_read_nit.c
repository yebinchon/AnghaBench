
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct pcap_pkthdr {int len; int caplen; int ts; } ;
struct TYPE_5__ {int ps_recv; int ps_drop; } ;
struct pcap_nit {TYPE_1__ stat; } ;
struct nit_hdr {int nh_state; int nh_datalen; int nh_wirelen; int nh_timestamp; int nh_dropped; } ;
struct TYPE_6__ {int bf_insns; } ;
struct TYPE_7__ {int cc; int snapshot; int * bp; TYPE_2__ fcode; int errbuf; scalar_t__ break_loop; scalar_t__ buffer; int bufsize; int fd; struct pcap_nit* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ EWOULDBLOCK ;





 int PACKET_COUNT_IS_UNLIMITED (int) ;
 scalar_t__ bpf_filter (int ,int *,int,int) ;
 scalar_t__ errno ;
 int pcap_fmt_errmsg_for_errno (int ,int,scalar_t__,char*) ;
 int pcap_snprintf (int ,int,char*,int) ;
 int read (int ,char*,int ) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

__attribute__((used)) static int
pcap_read_nit(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_nit *pn = p->priv;
 register int cc, n;
 register u_char *bp, *cp, *ep;
 register struct nit_hdr *nh;
 register int caplen;

 cc = p->cc;
 if (cc == 0) {
  cc = read(p->fd, (char *)p->buffer, p->bufsize);
  if (cc < 0) {
   if (errno == EWOULDBLOCK)
    return (0);
   pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
       errno, "pcap_read");
   return (-1);
  }
  bp = (u_char *)p->buffer;
 } else
  bp = p->bp;






 n = 0;
 ep = bp + cc;
 while (bp < ep) {
  if (p->break_loop) {
   if (n == 0) {
    p->break_loop = 0;
    return (-2);
   } else {
    p->cc = ep - bp;
    p->bp = bp;
    return (n);
   }
  }

  nh = (struct nit_hdr *)bp;
  cp = bp + sizeof(*nh);

  switch (nh->nh_state) {

  case 132:
   break;

  case 130:
  case 131:
  case 129:
   pn->stat.ps_drop = nh->nh_dropped;
   continue;

  case 128:
   continue;

  default:
   pcap_snprintf(p->errbuf, sizeof(p->errbuf),
       "bad nit state %d", nh->nh_state);
   return (-1);
  }
  ++pn->stat.ps_recv;
  bp += ((sizeof(struct nit_hdr) + nh->nh_datalen +
      sizeof(int) - 1) & ~(sizeof(int) - 1));

  caplen = nh->nh_wirelen;
  if (caplen > p->snapshot)
   caplen = p->snapshot;
  if (bpf_filter(p->fcode.bf_insns, cp, nh->nh_wirelen, caplen)) {
   struct pcap_pkthdr h;
   h.ts = nh->nh_timestamp;
   h.len = nh->nh_wirelen;
   h.caplen = caplen;
   (*callback)(user, &h, cp);
   if (++n >= cnt && !PACKET_COUNT_IS_UNLIMITED(cnt)) {
    p->cc = ep - bp;
    p->bp = bp;
    return (n);
   }
  }
 }
 p->cc = 0;
 return (n);
}
