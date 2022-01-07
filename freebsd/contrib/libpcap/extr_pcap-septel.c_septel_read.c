
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_11__ {int ps_recv; } ;
struct pcap_septel {TYPE_2__ stat; } ;
struct pcap_pkthdr {int caplen; unsigned short len; int ts; } ;
struct TYPE_10__ {int * bf_insns; } ;
struct TYPE_12__ {int snapshot; TYPE_1__ fcode; scalar_t__ break_loop; struct pcap_septel* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;
struct TYPE_14__ {int type; } ;
struct TYPE_13__ {unsigned short len; } ;
typedef TYPE_4__ MSG ;
typedef TYPE_5__ HDR ;


 TYPE_5__* GCT_grab (unsigned int) ;
 scalar_t__ bpf_filter (int *,int *,unsigned short,int) ;
 int * get_param (TYPE_4__*) ;
 int gettimeofday (int *,int *) ;
 int relm (TYPE_5__*) ;

__attribute__((used)) static int septel_read(pcap_t *p, int cnt, pcap_handler callback, u_char *user) {

  struct pcap_septel *ps = p->priv;
  HDR *h;
  MSG *m;
  int processed = 0 ;
  int t = 0 ;





  unsigned int id = 0xdd;


  do {

    unsigned short packet_len = 0;
    int caplen = 0;
    int counter = 0;
    struct pcap_pkthdr pcap_header;
    u_char *dp ;




loop:
    if (p->break_loop) {





      p->break_loop = 0;
      return -2;
    }




    do {


      h = GCT_grab(id);

      m = (MSG*)h;



      counter++ ;

    }
    while ((m == ((void*)0))&& (counter< 100)) ;

    if (m != ((void*)0)) {

      t = h->type ;




      if ((t != 0xcf00) && (t != 0x8f01)) {
        relm(h);
        goto loop ;
      }


      dp = get_param(m);
      packet_len = m->len;
      caplen = p->snapshot ;


      if (caplen > packet_len) {

        caplen = packet_len;
      }

      if ((p->fcode.bf_insns == ((void*)0)) || bpf_filter(p->fcode.bf_insns, dp, packet_len, caplen)) {
        (void)gettimeofday(&pcap_header.ts, ((void*)0));


        pcap_header.caplen = caplen;
        pcap_header.len = packet_len;


        ps->stat.ps_recv++;


        callback(user, &pcap_header, dp);

        processed++ ;

      }


      relm(h);
    }else
      processed++;

  }
  while (processed < cnt) ;

  return processed ;
}
