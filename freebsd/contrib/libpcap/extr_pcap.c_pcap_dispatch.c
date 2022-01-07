
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int (* read_op ) (TYPE_1__*,int,int ,int *) ;} ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_handler ;


 int stub1 (TYPE_1__*,int,int ,int *) ;

int
pcap_dispatch(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 return (p->read_op(p, cnt, callback, user));
}
