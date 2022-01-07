
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_dumper_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 scalar_t__ fflush (int *) ;

int
pcap_dump_flush(pcap_dumper_t *p)
{

 if (fflush((FILE *)p) == EOF)
  return (-1);
 else
  return (0);
}
