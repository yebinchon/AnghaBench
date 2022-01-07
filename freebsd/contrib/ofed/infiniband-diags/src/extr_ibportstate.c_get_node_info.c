
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_ATTR_NODE_INFO ;
 int IB_NODE_SWITCH ;
 int IB_NODE_TYPE_F ;
 int mad_get_field (int *,int ,int ) ;
 int smp_query_via (int *,int *,int ,int ,int ,int ) ;
 int srcport ;

__attribute__((used)) static int get_node_info(ib_portid_t * dest, uint8_t * data)
{
 int node_type;

 if (!smp_query_via(data, dest, IB_ATTR_NODE_INFO, 0, 0, srcport))
  IBEXIT("smp query nodeinfo failed");

 node_type = mad_get_field(data, 0, IB_NODE_TYPE_F);
 if (node_type == IB_NODE_SWITCH)
  return 1;
 else
  return 0;
}
