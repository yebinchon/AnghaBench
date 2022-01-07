
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; } ;
struct ibv_kern_ah_attr {int port_num; int is_global; int static_rate; int src_path_bits; int sl; int dlid; TYPE_3__ grh; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;
struct ibv_ah_attr {int port_num; int is_global; int static_rate; int src_path_bits; int sl; int dlid; TYPE_2__ grh; } ;


 int memcpy (int ,int ,int) ;

void ibv_copy_ah_attr_from_kern(struct ibv_ah_attr *dst,
    struct ibv_kern_ah_attr *src)
{
 memcpy(dst->grh.dgid.raw, src->grh.dgid, sizeof dst->grh.dgid);
 dst->grh.flow_label = src->grh.flow_label;
 dst->grh.sgid_index = src->grh.sgid_index;
 dst->grh.hop_limit = src->grh.hop_limit;
 dst->grh.traffic_class = src->grh.traffic_class;

 dst->dlid = src->dlid;
 dst->sl = src->sl;
 dst->src_path_bits = src->src_path_bits;
 dst->static_rate = src->static_rate;
 dst->is_global = src->is_global;
 dst->port_num = src->port_num;
}
