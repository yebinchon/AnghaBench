
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smp_engine_t ;
typedef int ibnd_node_t ;
typedef int ib_portid_t ;


 int IB_ATTR_NODE_DESC ;
 int issue_smp (int *,int *,int ,int ,int ,int *) ;
 int recv_node_desc ;

__attribute__((used)) static int query_node_desc(smp_engine_t * engine, ib_portid_t * portid,
      ibnd_node_t * node)
{
 return issue_smp(engine, portid, IB_ATTR_NODE_DESC, 0,
    recv_node_desc, node);
}
