
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_dumper_t ;
typedef int int64_t ;
typedef int FILE ;


 int ftell (int *) ;

int64_t
pcap_dump_ftell64(pcap_dumper_t *p)
{
 return (ftell((FILE *)p));
}
