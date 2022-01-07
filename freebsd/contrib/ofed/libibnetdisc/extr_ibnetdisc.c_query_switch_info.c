
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int smp_engine_t ;
struct TYPE_4__ {scalar_t__ smaenhsp0; } ;
typedef TYPE_1__ ibnd_node_t ;
typedef int ib_portid_t ;


 int IB_ATTR_SWITCH_INFO ;
 int issue_smp (int *,int *,int ,int ,int ,TYPE_1__*) ;
 int recv_switch_info ;

__attribute__((used)) static int query_switch_info(smp_engine_t * engine, ib_portid_t * portid,
        ibnd_node_t * node)
{
 node->smaenhsp0 = 0;
 return issue_smp(engine, portid, IB_ATTR_SWITCH_INFO, 0,
    recv_switch_info, node);
}
