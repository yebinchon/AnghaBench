
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* gid; int pkey_index; int flow_label; scalar_t__ traffic_class; scalar_t__ hop_limit; scalar_t__ gid_index; int grh_present; int sl; int lid; int qkey; int qpn; } ;
typedef TYPE_1__ ib_mad_addr_t ;


 char HEX (int) ;
 int IBWARN (char*,int ,int ,int ,int ,int ,int,int,int,int ,int ,char*) ;
 int be16toh (int ) ;
 int be32toh (int ) ;

void umad_addr_dump(ib_mad_addr_t * addr)
{

 char gid_str[64];
 int i;

 for (i = 0; i < sizeof addr->gid; i++) {
  gid_str[i * 2] = ((addr->gid[i] >> 4) < 10 ? '0' + (addr->gid[i] >> 4) : 'a' + ((addr->gid[i] >> 4) -10));
  gid_str[i * 2 + 1] = ((addr->gid[i] & 0xf) < 10 ? '0' + (addr->gid[i] & 0xf) : 'a' + ((addr->gid[i] & 0xf) -10));
 }
 gid_str[i * 2] = 0;
 IBWARN("qpn %d qkey 0x%x lid %u sl %d\n"
        "grh_present %d gid_index %d hop_limit %d traffic_class %d flow_label 0x%x pkey_index 0x%x\n"
        "Gid 0x%s",
        be32toh(addr->qpn), be32toh(addr->qkey), be16toh(addr->lid), addr->sl,
        addr->grh_present, (int)addr->gid_index, (int)addr->hop_limit,
        (int)addr->traffic_class, addr->flow_label, addr->pkey_index,
        gid_str);
}
