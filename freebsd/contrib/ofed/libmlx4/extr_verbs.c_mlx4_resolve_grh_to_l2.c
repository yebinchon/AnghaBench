
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ibv_gid {int* raw; } ;
typedef int uint16_t ;
struct TYPE_4__ {int port_pd; int dlid; } ;
struct mlx4_ah {int* mac; int vlan; TYPE_2__ av; } ;
struct ibv_pd {int context; } ;
struct TYPE_3__ {int sgid_index; union ibv_gid dgid; } ;
struct ibv_ah_attr {int sl; TYPE_1__ grh; int port_num; } ;


 int get_vlan_id (union ibv_gid*) ;
 int htobe16 (int) ;
 int htobe32 (int) ;
 int ibv_query_gid (int ,int ,int ,union ibv_gid*) ;
 scalar_t__ is_multicast_gid (union ibv_gid*) ;
 scalar_t__ link_local_gid (union ibv_gid*) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int mlx4_resolve_grh_to_l2(struct ibv_pd *pd, struct mlx4_ah *ah,
      struct ibv_ah_attr *attr)
{
 int err, i;
 uint16_t vid;
 union ibv_gid sgid;

 if (link_local_gid(&attr->grh.dgid)) {
  memcpy(ah->mac, &attr->grh.dgid.raw[8], 3);
  memcpy(ah->mac + 3, &attr->grh.dgid.raw[13], 3);
  ah->mac[0] ^= 2;

  vid = get_vlan_id(&attr->grh.dgid);
 } else if (is_multicast_gid(&attr->grh.dgid)) {
  ah->mac[0] = 0x33;
  ah->mac[1] = 0x33;
  for (i = 2; i < 6; ++i)
   ah->mac[i] = attr->grh.dgid.raw[i + 10];

  err = ibv_query_gid(pd->context, attr->port_num,
        attr->grh.sgid_index, &sgid);
  if (err)
   return err;

  ah->av.dlid = htobe16(0xc000);
  ah->av.port_pd |= htobe32(1 << 31);

  vid = get_vlan_id(&sgid);
 } else
  return 1;

 if (vid != 0xffff) {
  ah->av.port_pd |= htobe32(1 << 29);
  ah->vlan = vid | ((attr->sl & 7) << 13);
 }

 return 0;
}
