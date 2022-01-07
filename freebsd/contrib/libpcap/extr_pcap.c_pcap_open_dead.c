
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int PCAP_TSTAMP_PRECISION_MICRO ;
 int * pcap_open_dead_with_tstamp_precision (int,int,int ) ;

pcap_t *
pcap_open_dead(int linktype, int snaplen)
{
 return (pcap_open_dead_with_tstamp_precision(linktype, snaplen,
     PCAP_TSTAMP_PRECISION_MICRO));
}
