
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct pcap_rdmasniff {int oneshot_buffer; } ;
struct pcap_pkthdr {int caplen; } ;
struct oneshot_userdata {int * pkt; struct pcap_pkthdr* hdr; TYPE_1__* pd; } ;
struct TYPE_2__ {struct pcap_rdmasniff* priv; } ;
typedef TYPE_1__ pcap_t ;


 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static void
rdmasniff_oneshot(u_char *user, const struct pcap_pkthdr *h, const u_char *bytes)
{
 struct oneshot_userdata *sp = (struct oneshot_userdata *) user;
 pcap_t *handle = sp->pd;
 struct pcap_rdmasniff *priv = handle->priv;

 *sp->hdr = *h;
 memcpy(priv->oneshot_buffer, bytes, h->caplen);
 *sp->pkt = priv->oneshot_buffer;
}
