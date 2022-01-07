
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {int dummy; } ;
struct pcap_septel {struct pcap_stat stat; } ;
struct TYPE_3__ {struct pcap_septel* priv; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int septel_stats(pcap_t *p, struct pcap_stat *ps) {
  struct pcap_septel *handlep = p->priv;



  *ps = handlep->stat;

  return 0;
}
