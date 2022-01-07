
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ibv_sa_path_rec {int hop_limit; int reversible; int mtu; int rate; int packet_life_time; int preference; int sl; int pkey; int traffic_class; int flow_label; int slid; int dlid; int sgid; int dgid; } ;
struct TYPE_2__ {int reversible_numpath; int mtu; int rate; int packetlifetime; int qosclass_sl; int pkey; int tclass; int flowlabel_hoplimit; int slid; int dlid; int sgid; int dgid; } ;
struct ibv_path_data {int flags; TYPE_1__ path; } ;


 int be32toh (int ) ;
 int htobe16 (int ) ;
 int htobe32 (int) ;
 int memset (struct ibv_path_data*,int ,int) ;

__attribute__((used)) static void rs_convert_sa_path(struct ibv_sa_path_rec *sa_path,
          struct ibv_path_data *path_data)
{
 uint32_t fl_hop;

 memset(path_data, 0, sizeof(*path_data));
 path_data->path.dgid = sa_path->dgid;
 path_data->path.sgid = sa_path->sgid;
 path_data->path.dlid = sa_path->dlid;
 path_data->path.slid = sa_path->slid;
 fl_hop = be32toh(sa_path->flow_label) << 8;
 path_data->path.flowlabel_hoplimit = htobe32(fl_hop | sa_path->hop_limit);
 path_data->path.tclass = sa_path->traffic_class;
 path_data->path.reversible_numpath = sa_path->reversible << 7 | 1;
 path_data->path.pkey = sa_path->pkey;
 path_data->path.qosclass_sl = htobe16(sa_path->sl);
 path_data->path.mtu = sa_path->mtu | 2 << 6;
 path_data->path.rate = sa_path->rate | 2 << 6;
 path_data->path.packetlifetime = sa_path->packet_life_time | 2 << 6;
 path_data->flags= sa_path->preference;
}
