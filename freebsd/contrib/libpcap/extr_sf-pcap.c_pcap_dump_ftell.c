
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_dumper_t ;
typedef int FILE ;


 long ftell (int *) ;

long
pcap_dump_ftell(pcap_dumper_t *p)
{
 return (ftell((FILE *)p));
}
