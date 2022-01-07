
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_flow_id {int dummy; } ;


 int IS_IP6_FLOW_ID (struct ipfw_flow_id*) ;
 int printf (char*) ;

__attribute__((used)) static void
print_header(struct ipfw_flow_id *id)
{
 if (!IS_IP6_FLOW_ID(id))
  printf("BKT Prot ___Source IP/port____ "
      "____Dest. IP/port____ "
      "Tot_pkt/bytes Pkt/Byte Drp\n");
 else
  printf("BKT ___Prot___ _flow-id_ "
      "______________Source IPv6/port_______________ "
      "_______________Dest. IPv6/port_______________ "
      "Tot_pkt/bytes Pkt/Byte Drp\n");
}
