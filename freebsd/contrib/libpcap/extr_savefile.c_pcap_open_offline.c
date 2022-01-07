
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int PCAP_TSTAMP_PRECISION_MICRO ;
 int * pcap_open_offline_with_tstamp_precision (char const*,int ,char*) ;

pcap_t *
pcap_open_offline(const char *fname, char *errbuf)
{
 return (pcap_open_offline_with_tstamp_precision(fname,
     PCAP_TSTAMP_PRECISION_MICRO, errbuf));
}
