
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rfile; } ;
typedef TYPE_1__ pcap_t ;
typedef int FILE ;



FILE *
pcap_file(pcap_t *p)
{
 return (p->rfile);
}
