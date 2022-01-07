
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; scalar_t__ len; int ts; } ;
struct pcap_pf {scalar_t__ TotMissed; scalar_t__ OrigMissed; int TotAccepted; scalar_t__ filtering_in_kernel; int TotDrops; int TotPkts; } ;
struct enstamp {int ens_stamplen; int ens_count; scalar_t__ ens_ifoverflows; int ens_tstamp; scalar_t__ ens_dropped; } ;
struct TYPE_4__ {int bf_insns; } ;
struct TYPE_5__ {int cc; int offset; scalar_t__ bufsize; int snapshot; int * bp; TYPE_1__ fcode; int errbuf; scalar_t__ break_loop; scalar_t__ fddipad; scalar_t__ buffer; int fd; struct pcap_pf* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ EINVAL ;
 int ENALIGN (int) ;
 scalar_t__ EWOULDBLOCK ;
 int PACKET_COUNT_IS_UNLIMITED (int) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ bpf_filter (int ,int *,int,int) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int ,long,int ) ;
 int memcpy (char*,char*,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int,scalar_t__,char*) ;
 int pcap_snprintf (int ,int,char*,int) ;
 int read (int ,char*,scalar_t__) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

__attribute__((used)) static int
pcap_read_pf(pcap_t *pc, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_pf *pf = pc->priv;
 register u_char *p, *bp;
 register int cc, n, buflen, inc;
 register struct enstamp *sp;



 register u_int pad;

 again:
 cc = pc->cc;
 if (cc == 0) {
  cc = read(pc->fd, (char *)pc->buffer + pc->offset, pc->bufsize);
  if (cc < 0) {
   if (errno == EWOULDBLOCK)
    return (0);
   if (errno == EINVAL &&
       lseek(pc->fd, 0L, SEEK_CUR) + pc->bufsize < 0) {






    (void)lseek(pc->fd, 0L, SEEK_SET);
    goto again;
   }
   pcap_fmt_errmsg_for_errno(pc->errbuf,
       sizeof(pc->errbuf), errno, "pf read");
   return (-1);
  }
  bp = (u_char *)pc->buffer + pc->offset;
 } else
  bp = pc->bp;



 n = 0;
 pad = pc->fddipad;
 while (cc > 0) {
  if (pc->break_loop) {
   if (n == 0) {
    pc->break_loop = 0;
    return (-2);
   } else {
    pc->cc = cc;
    pc->bp = bp;
    return (n);
   }
  }
  if (cc < sizeof(*sp)) {
   pcap_snprintf(pc->errbuf, sizeof(pc->errbuf),
       "pf short read (%d)", cc);
   return (-1);
  }






   sp = (struct enstamp *)bp;
  if (sp->ens_stamplen != sizeof(*sp)) {
   pcap_snprintf(pc->errbuf, sizeof(pc->errbuf),
       "pf short stamplen (%d)",
       sp->ens_stamplen);
   return (-1);
  }

  p = bp + sp->ens_stamplen;
  buflen = sp->ens_count;
  if (buflen > pc->snapshot)
   buflen = pc->snapshot;


  inc = ENALIGN(buflen + sp->ens_stamplen);
  cc -= inc;
  bp += inc;
  pf->TotPkts++;
  pf->TotDrops += sp->ens_dropped;
  pf->TotMissed = sp->ens_ifoverflows;
  if (pf->OrigMissed < 0)
   pf->OrigMissed = pf->TotMissed;
  if (pf->filtering_in_kernel ||
      bpf_filter(pc->fcode.bf_insns, p, sp->ens_count, buflen)) {
   struct pcap_pkthdr h;
   pf->TotAccepted++;
   h.ts = sp->ens_tstamp;
   h.len = sp->ens_count - pad;
   p += pad;
   buflen -= pad;
   h.caplen = buflen;
   (*callback)(user, &h, p);
   if (++n >= cnt && !PACKET_COUNT_IS_UNLIMITED(cnt)) {
    pc->cc = cc;
    pc->bp = bp;
    return (n);
   }
  }
 }
 pc->cc = 0;
 return (n);
}
