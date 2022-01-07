
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ibv_port_attr {int lmc; } ;
struct ds_dest {TYPE_2__* qp; } ;
struct TYPE_4__ {TYPE_1__* cm_id; } ;
struct TYPE_3__ {int port_num; int verbs; } ;


 int ibv_query_port (int ,int ,struct ibv_port_attr*) ;

__attribute__((used)) static uint8_t udp_svc_path_bits(struct ds_dest *dest)
{
 struct ibv_port_attr attr;

 if (!ibv_query_port(dest->qp->cm_id->verbs, dest->qp->cm_id->port_num, &attr))
  return (uint8_t) ((1 << attr.lmc) - 1);
 return 0x7f;
}
