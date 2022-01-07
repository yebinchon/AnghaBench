
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_5__ {int tstamp_type; } ;
struct TYPE_6__ {int tstamp_type_count; scalar_t__* tstamp_type_list; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_ERROR_ACTIVATED ;
 int PCAP_TSTAMP_HOST ;
 int PCAP_WARNING_TSTAMP_TYPE_NOTSUP ;
 scalar_t__ pcap_check_activated (TYPE_2__*) ;

int
pcap_set_tstamp_type(pcap_t *p, int tstamp_type)
{
 int i;

 if (pcap_check_activated(p))
  return (PCAP_ERROR_ACTIVATED);





 if (tstamp_type < 0)
  return (PCAP_WARNING_TSTAMP_TYPE_NOTSUP);





 if (p->tstamp_type_count == 0) {
  if (tstamp_type == PCAP_TSTAMP_HOST) {
   p->opt.tstamp_type = tstamp_type;
   return (0);
  }
 } else {



  for (i = 0; i < p->tstamp_type_count; i++) {
   if (p->tstamp_type_list[i] == (u_int)tstamp_type) {



    p->opt.tstamp_type = tstamp_type;
    return (0);
   }
  }
 }




 return (PCAP_WARNING_TSTAMP_TYPE_NOTSUP);
}
