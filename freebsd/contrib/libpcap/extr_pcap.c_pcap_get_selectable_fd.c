
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int selectable_fd; } ;
typedef TYPE_1__ pcap_t ;



int
pcap_get_selectable_fd(pcap_t *p)
{
 return (p->selectable_fd);
}
