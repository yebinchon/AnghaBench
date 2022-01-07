
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct snf_recv_req {int length; int pkt_addr; int timestamp; } ;
struct pcap_snf {int snf_timeout; int snf_ring; } ;
struct pcap_pkthdr {int caplen; int len; int ts; } ;
struct TYPE_6__ {int tstamp_precision; } ;
struct TYPE_5__ {int * bf_insns; } ;
struct TYPE_7__ {int snapshot; TYPE_2__ opt; TYPE_1__ fcode; int errbuf; scalar_t__ break_loop; struct pcap_snf* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int ) ;


 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 scalar_t__ PACKET_COUNT_IS_UNLIMITED (int) ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ bpf_filter (int *,int ,int,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int,char*) ;
 int snf_ring_recv (int ,int,struct snf_recv_req*) ;
 int snf_timestamp_to_timeval (int ,int ) ;

__attribute__((used)) static int
snf_read(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_snf *ps = p->priv;
 struct pcap_pkthdr hdr;
 int i, flags, err, caplen, n;
 struct snf_recv_req req;
 int nonblock, timeout;

 if (!p)
  return -1;

 n = 0;
 timeout = ps->snf_timeout;
 while (n < cnt || PACKET_COUNT_IS_UNLIMITED(cnt)) {



  if (p->break_loop) {
   if (n == 0) {
    p->break_loop = 0;
    return (-2);
   } else {
    return (n);
   }
  }

  err = snf_ring_recv(ps->snf_ring, timeout, &req);

  if (err) {
   if (err == EBUSY || err == EAGAIN) {
    return (n);
   }
   else if (err == EINTR) {
    timeout = 0;
    continue;
   }
   else {
    pcap_fmt_errmsg_for_errno(p->errbuf,
        PCAP_ERRBUF_SIZE, err, "snf_read");
    return -1;
   }
  }

  caplen = req.length;
  if (caplen > p->snapshot)
   caplen = p->snapshot;

  if ((p->fcode.bf_insns == ((void*)0)) ||
       bpf_filter(p->fcode.bf_insns, req.pkt_addr, req.length, caplen)) {
   hdr.ts = snf_timestamp_to_timeval(req.timestamp, p->opt.tstamp_precision);
   hdr.caplen = caplen;
   hdr.len = req.length;
   callback(user, &hdr, req.pkt_addr);
  }
  n++;



  if (timeout != 0)
   timeout = 0;
 }
 return (n);
}
