
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_cbdata {int dummy; } ;
typedef int smp_engine_t ;
typedef int ib_portid_t ;


 int IBND_DEBUG (char*,int ) ;
 int IB_ATTR_NODE_INFO ;
 int issue_smp (int *,int *,int ,int ,int ,void*) ;
 int portid2str (int *) ;
 int recv_node_info ;

__attribute__((used)) static int query_node_info(smp_engine_t * engine, ib_portid_t * portid,
      struct ni_cbdata * cbdata)
{
 IBND_DEBUG("Query Node Info; %s\n", portid2str(portid));
 return issue_smp(engine, portid, IB_ATTR_NODE_INFO, 0,
    recv_node_info, (void *)cbdata);
}
