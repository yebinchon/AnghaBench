
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

void
pcap_perror(pcap_t *p, const char *prefix)
{
 fprintf(stderr, "%s: %s\n", prefix, p->errbuf);
}
