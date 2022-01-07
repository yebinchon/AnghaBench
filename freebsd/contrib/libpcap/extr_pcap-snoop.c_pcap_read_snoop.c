
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_10__ {int tv_usec; int tv_sec; } ;
struct snoopheader {int snoop_packetlen; TYPE_4__ snoop_timestamp; } ;
struct TYPE_8__ {int ps_recv; } ;
struct pcap_snoop {TYPE_2__ stat; } ;
struct TYPE_9__ {int tv_usec; int tv_sec; } ;
struct pcap_pkthdr {int len; int caplen; TYPE_3__ ts; } ;
struct TYPE_7__ {int * bf_insns; } ;
struct TYPE_11__ {int snapshot; int offset; scalar_t__ linktype; TYPE_1__ fcode; scalar_t__ buffer; int errbuf; int bufsize; int fd; scalar_t__ break_loop; struct pcap_snoop* priv; } ;
typedef TYPE_5__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ DLT_NULL ;


 scalar_t__ bpf_filter (int *,int *,int,int) ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (int ,int,int,char*) ;
 int read (int ,char*,int ) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

__attribute__((used)) static int
pcap_read_snoop(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_snoop *psn = p->priv;
 int cc;
 register struct snoopheader *sh;
 register u_int datalen;
 register u_int caplen;
 register u_char *cp;

again:



 if (p->break_loop) {





  p->break_loop = 0;
  return (-2);
 }
 cc = read(p->fd, (char *)p->buffer, p->bufsize);
 if (cc < 0) {

  switch (errno) {

  case 129:
   goto again;

  case 128:
   return (0);
  }
  pcap_fmt_errmsg_for_errno(p->errbuf, sizeof(p->errbuf),
      errno, "read");
  return (-1);
 }
 sh = (struct snoopheader *)p->buffer;
 datalen = sh->snoop_packetlen;






 if (cc == (p->snapshot + sizeof(struct snoopheader)) &&
     (datalen < p->snapshot))
  datalen += (64 * 1024);

 caplen = (datalen < p->snapshot) ? datalen : p->snapshot;
 cp = (u_char *)(sh + 1) + p->offset;







 if (p->linktype == DLT_NULL && *((short *)(cp + 2)) == 0) {
  u_int *uip = (u_int *)cp;
  *uip >>= 16;
 }

 if (p->fcode.bf_insns == ((void*)0) ||
     bpf_filter(p->fcode.bf_insns, cp, datalen, caplen)) {
  struct pcap_pkthdr h;
  ++psn->stat.ps_recv;
  h.ts.tv_sec = sh->snoop_timestamp.tv_sec;
  h.ts.tv_usec = sh->snoop_timestamp.tv_usec;
  h.len = datalen;
  h.caplen = caplen;
  (*callback)(user, &h, cp);
  return (1);
 }
 return (0);
}
