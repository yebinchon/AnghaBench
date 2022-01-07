
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direction; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_direction_t ;



__attribute__((used)) static int
bt_setdirection_linux(pcap_t *p, pcap_direction_t d)
{
 p->direction = d;
 return 0;
}
