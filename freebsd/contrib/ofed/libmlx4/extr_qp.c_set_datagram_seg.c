
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_wqe_datagram_seg {int mac; int vlan; void* qkey; void* dqpn; int av; } ;
struct mlx4_av {int dummy; } ;
struct TYPE_4__ {int ah; int remote_qkey; int remote_qpn; } ;
struct TYPE_5__ {TYPE_1__ ud; } ;
struct ibv_send_wr {TYPE_2__ wr; } ;
struct TYPE_6__ {int * mac; int vlan; int av; } ;


 int htobe16 (int ) ;
 void* htobe32 (int ) ;
 int memcpy (int ,int *,int) ;
 TYPE_3__* to_mah (int ) ;

__attribute__((used)) static void set_datagram_seg(struct mlx4_wqe_datagram_seg *dseg,
        struct ibv_send_wr *wr)
{
 memcpy(dseg->av, &to_mah(wr->wr.ud.ah)->av, sizeof (struct mlx4_av));
 dseg->dqpn = htobe32(wr->wr.ud.remote_qpn);
 dseg->qkey = htobe32(wr->wr.ud.remote_qkey);
 dseg->vlan = htobe16(to_mah(wr->wr.ud.ah)->vlan);
 memcpy(dseg->mac, to_mah(wr->wr.ud.ah)->mac, 6);
}
