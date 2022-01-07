
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct pcap_rpcap {int rmt_capstarted; scalar_t__ rmt_clientside; } ;
struct pcap_pkthdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ break_loop; struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;


 scalar_t__ PACKET_COUNT_IS_UNLIMITED (int) ;
 int PCAP_ERROR_BREAK ;
 int pcap_read_nocb_remote (TYPE_1__*,struct pcap_pkthdr*,int **) ;
 scalar_t__ pcap_startcapture_remote (TYPE_1__*) ;
 int stub1 (int *,struct pcap_pkthdr*,int *) ;

__attribute__((used)) static int pcap_read_rpcap(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_rpcap *pr = p->priv;
 struct pcap_pkthdr pkt_header;
 u_char *pkt_data;
 int n = 0;
 int ret;





 if (pr->rmt_clientside)
 {

  if (!pr->rmt_capstarted)
  {




   if (pcap_startcapture_remote(p))
    return -1;
  }
 }

 while (n < cnt || PACKET_COUNT_IS_UNLIMITED(cnt))
 {



  if (p->break_loop) {





   p->break_loop = 0;
   return (PCAP_ERROR_BREAK);
  }




  ret = pcap_read_nocb_remote(p, &pkt_header, &pkt_data);
  if (ret == 1)
  {




   (*callback)(user, &pkt_header, pkt_data);
   n++;
  }
  else if (ret == -1)
  {

   return ret;
  }
  else
  {







   if (p->break_loop) {



    p->break_loop = 0;
    return (PCAP_ERROR_BREAK);
   }

   return n;
  }
 }
 return n;
}
