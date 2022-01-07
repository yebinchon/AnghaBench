
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;
typedef int FILE ;


 int PCAP_TSTAMP_PRECISION_MICRO ;
 int * pcap_fopen_offline_with_tstamp_precision (int *,int ,char*) ;

pcap_t *
pcap_fopen_offline(FILE *fp, char *errbuf)
{
 return (pcap_fopen_offline_with_tstamp_precision(fp,
     PCAP_TSTAMP_PRECISION_MICRO, errbuf));
}
