
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_5__ {int tstamp_precision; } ;
struct TYPE_6__ {int tstamp_precision_count; scalar_t__* tstamp_precision_list; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_ERROR_ACTIVATED ;
 int PCAP_ERROR_TSTAMP_PRECISION_NOTSUP ;
 int PCAP_TSTAMP_PRECISION_MICRO ;
 scalar_t__ pcap_check_activated (TYPE_2__*) ;

int
pcap_set_tstamp_precision(pcap_t *p, int tstamp_precision)
{
 int i;

 if (pcap_check_activated(p))
  return (PCAP_ERROR_ACTIVATED);





 if (tstamp_precision < 0)
  return (PCAP_ERROR_TSTAMP_PRECISION_NOTSUP);
 if (p->tstamp_precision_count == 0) {
  if (tstamp_precision == PCAP_TSTAMP_PRECISION_MICRO) {
   p->opt.tstamp_precision = tstamp_precision;
   return (0);
  }
 } else {




  for (i = 0; i < p->tstamp_precision_count; i++) {
   if (p->tstamp_precision_list[i] == (u_int)tstamp_precision) {



    p->opt.tstamp_precision = tstamp_precision;
    return (0);
   }
  }
 }




 return (PCAP_ERROR_TSTAMP_PRECISION_NOTSUP);
}
