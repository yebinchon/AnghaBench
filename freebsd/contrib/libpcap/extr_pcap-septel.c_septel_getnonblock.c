
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 char* PCAP_ERRBUF_SIZE ;
 int fprintf (int ,char*,char*) ;

__attribute__((used)) static int
septel_getnonblock(pcap_t *p)
{
  fprintf(p->errbuf, PCAP_ERRBUF_SIZE, "Non-blocking mode not supported on Septel devices");
  return (-1);
}
