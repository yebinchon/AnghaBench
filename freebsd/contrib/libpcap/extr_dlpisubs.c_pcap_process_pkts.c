
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {int tv_usec; int tv_sec; } ;
struct sb_hdr {int sbh_origlen; int sbh_msglen; TYPE_3__ sbh_timestamp; int sbh_totlen; int sbh_drops; } ;
struct TYPE_11__ {int tv_usec; int tv_sec; } ;
struct pcap_pkthdr {int len; int caplen; TYPE_6__ ts; } ;
struct TYPE_7__ {int ps_recv; int ps_drop; } ;
struct pcap_dlpi {TYPE_1__ stat; } ;
struct TYPE_8__ {int bf_insns; } ;
struct TYPE_10__ {int cc; int * bp; scalar_t__ snapshot; TYPE_2__ fcode; scalar_t__ break_loop; struct pcap_dlpi* priv; } ;
typedef TYPE_4__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;
typedef int bpf_u_int32 ;


 int PACKET_COUNT_IS_UNLIMITED (int) ;
 scalar_t__ bpf_filter (int ,int *,int,int) ;
 int gettimeofday (TYPE_6__*,int *) ;
 int memcpy (struct sb_hdr*,int *,int) ;
 int min (scalar_t__,int) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

int
pcap_process_pkts(pcap_t *p, pcap_handler callback, u_char *user,
 int count, u_char *bufp, int len)
{
 struct pcap_dlpi *pd = p->priv;
 int n, caplen, origlen;
 u_char *ep, *pk;
 struct pcap_pkthdr pkthdr;
 ep = bufp + len;
 n = 0;
  origlen = len;
  caplen = min(p->snapshot, len);
  pk = bufp;
  bufp += caplen;

  ++pd->stat.ps_recv;
  if (bpf_filter(p->fcode.bf_insns, pk, origlen, caplen)) {




   (void) gettimeofday(&pkthdr.ts, ((void*)0));

   pkthdr.len = origlen;
   pkthdr.caplen = caplen;

   if (pkthdr.caplen > (bpf_u_int32)p->snapshot)
    pkthdr.caplen = (bpf_u_int32)p->snapshot;
   (*callback)(user, &pkthdr, pk);
   if (++n >= count && !PACKET_COUNT_IS_UNLIMITED(count)) {
    p->cc = ep - bufp;
    p->bp = bufp;
    return (n);
   }
  }



 p->cc = 0;
 return (n);
}
