
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int ps_drop; int ps_recv; } ;
struct pcap_snit {TYPE_1__ stat; } ;
struct pcap_pkthdr {int len; int caplen; int ts; } ;
struct nit_iftime {int nh_timestamp; } ;
struct nit_iflen {int nh_pktlen; } ;
struct nit_ifdrops {int nh_drops; } ;
struct nit_bufhdr {int nhb_totlen; } ;
struct TYPE_6__ {int bf_insns; } ;
struct TYPE_7__ {int cc; int snapshot; int * bp; TYPE_2__ fcode; scalar_t__ break_loop; scalar_t__ buffer; int errbuf; int bufsize; int fd; struct pcap_snit* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ EWOULDBLOCK ;
 int PACKET_COUNT_IS_UNLIMITED (int) ;
 scalar_t__ bpf_filter (int ,int *,int,int) ;
 scalar_t__ errno ;
 int pcap_fmt_errmsg_for_errno (int ,int,scalar_t__,char*) ;
 int read (int ,char*,int ) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

__attribute__((used)) static int
pcap_read_snit(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_snit *psn = p->priv;
 register int cc, n;
 register u_char *bp, *cp, *ep;
 register struct nit_bufhdr *hdrp;
 register struct nit_iftime *ntp;
 register struct nit_iflen *nlp;
 register struct nit_ifdrops *ndp;
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
    p->bp = bp;
    p->cc = ep - bp;
    return (n);
   }
  }

  ++psn->stat.ps_recv;
  cp = bp;


  hdrp = (struct nit_bufhdr *)cp;
  cp += sizeof(*hdrp);


  ntp = (struct nit_iftime *)cp;
  cp += sizeof(*ntp);

  ndp = (struct nit_ifdrops *)cp;
  psn->stat.ps_drop = ndp->nh_drops;
  cp += sizeof *ndp;


  nlp = (struct nit_iflen *)cp;
  cp += sizeof(*nlp);


  bp += hdrp->nhb_totlen;

  caplen = nlp->nh_pktlen;
  if (caplen > p->snapshot)
   caplen = p->snapshot;

  if (bpf_filter(p->fcode.bf_insns, cp, nlp->nh_pktlen, caplen)) {
   struct pcap_pkthdr h;
   h.ts = ntp->nh_timestamp;
   h.len = nlp->nh_pktlen;
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
