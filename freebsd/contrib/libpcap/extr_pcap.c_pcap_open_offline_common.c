
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tstamp_precision; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_TSTAMP_PRECISION_MICRO ;
 TYPE_2__* pcap_alloc_pcap_t (char*,size_t) ;

pcap_t *
pcap_open_offline_common(char *ebuf, size_t size)
{
 pcap_t *p;

 p = pcap_alloc_pcap_t(ebuf, size);
 if (p == ((void*)0))
  return (((void*)0));

 p->opt.tstamp_precision = PCAP_TSTAMP_PRECISION_MICRO;

 return (p);
}
