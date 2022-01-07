
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_3__ {struct timeval* required_select_timeout; } ;
typedef TYPE_1__ pcap_t ;



struct timeval *
pcap_get_required_select_timeout(pcap_t *p)
{
 return (p->required_select_timeout);
}
