
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int break_loop; } ;
typedef TYPE_1__ pcap_t ;



void
pcap_breakloop(pcap_t *p)
{
 p->break_loop = 1;
}
