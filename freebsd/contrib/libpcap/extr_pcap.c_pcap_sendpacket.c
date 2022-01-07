
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int (* inject_op ) (TYPE_1__*,int const*,int) ;} ;
typedef TYPE_1__ pcap_t ;


 int stub1 (TYPE_1__*,int const*,int) ;

int
pcap_sendpacket(pcap_t *p, const u_char *buf, int size)
{
 if (p->inject_op(p, buf, size) == -1)
  return (-1);
 return (0);
}
