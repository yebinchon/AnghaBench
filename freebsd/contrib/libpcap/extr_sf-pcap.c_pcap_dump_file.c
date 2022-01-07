
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_dumper_t ;
typedef int FILE ;



FILE *
pcap_dump_file(pcap_dumper_t *p)
{
 return ((FILE *)p);
}
