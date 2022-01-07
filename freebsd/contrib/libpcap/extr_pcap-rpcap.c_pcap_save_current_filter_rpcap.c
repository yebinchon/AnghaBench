
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_rpcap {int rmt_flags; scalar_t__ currentfilter; scalar_t__ rmt_clientside; } ;
struct TYPE_3__ {struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_OPENFLAG_NOCAPTURE_RPCAP ;
 int free (scalar_t__) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static void
pcap_save_current_filter_rpcap(pcap_t *fp, const char *filter)
{
 struct pcap_rpcap *pr = fp->priv;
 if (pr->rmt_clientside &&
     (pr->rmt_flags & PCAP_OPENFLAG_NOCAPTURE_RPCAP))
 {
  if (pr->currentfilter)
   free(pr->currentfilter);

  if (filter == ((void*)0))
   filter = "";

  pr->currentfilter = strdup(filter);
 }
}
