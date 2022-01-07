
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* immd_src; int isgl_src; } ;
struct TYPE_5__ {void* plen; TYPE_1__ u; scalar_t__ r4; scalar_t__ r3; scalar_t__ stag_inv; void* sendop_pkd; } ;
union t4_wr {TYPE_2__ send; } ;
typedef int u8 ;
typedef int u32 ;
struct t4_sq {int dummy; } ;
struct ibv_send_wr {int num_sge; int send_flags; int sg_list; } ;
struct fw_ri_sge {int dummy; } ;
struct fw_ri_isgl {int dummy; } ;
struct fw_ri_immd {int dummy; } ;
struct TYPE_6__ {scalar_t__ immdlen; scalar_t__ r2; scalar_t__ r1; int op; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int FW_RI_DATA_IMMD ;
 int FW_RI_SEND ;
 int FW_RI_SEND_WITH_SE ;
 int FW_RI_SEND_WR_SENDOP_V (int ) ;
 int IBV_SEND_INLINE ;
 int IBV_SEND_SOLICITED ;
 int T4_MAX_SEND_INLINE ;
 int T4_MAX_SEND_SGE ;
 int build_immd (struct t4_sq*,TYPE_3__*,struct ibv_send_wr*,int ,int*) ;
 int build_isgl (int ,int ,int,int*) ;
 void* htobe32 (int) ;

__attribute__((used)) static int build_rdma_send(struct t4_sq *sq, union t4_wr *wqe,
      struct ibv_send_wr *wr, u8 *len16)
{
 u32 plen;
 int size;
 int ret;

 if (wr->num_sge > T4_MAX_SEND_SGE)
  return -EINVAL;
 if (wr->send_flags & IBV_SEND_SOLICITED)
  wqe->send.sendop_pkd = htobe32(
   FW_RI_SEND_WR_SENDOP_V(FW_RI_SEND_WITH_SE));
 else
  wqe->send.sendop_pkd = htobe32(
   FW_RI_SEND_WR_SENDOP_V(FW_RI_SEND));
 wqe->send.stag_inv = 0;
 wqe->send.r3 = 0;
 wqe->send.r4 = 0;

 plen = 0;
 if (wr->num_sge) {
  if (wr->send_flags & IBV_SEND_INLINE) {
   ret = build_immd(sq, wqe->send.u.immd_src, wr,
      T4_MAX_SEND_INLINE, &plen);
   if (ret)
    return ret;
   size = sizeof wqe->send + sizeof(struct fw_ri_immd) +
          plen;
  } else {
   ret = build_isgl(wqe->send.u.isgl_src,
      wr->sg_list, wr->num_sge, &plen);
   if (ret)
    return ret;
   size = sizeof wqe->send + sizeof(struct fw_ri_isgl) +
          wr->num_sge * sizeof (struct fw_ri_sge);
  }
 } else {
  wqe->send.u.immd_src[0].op = FW_RI_DATA_IMMD;
  wqe->send.u.immd_src[0].r1 = 0;
  wqe->send.u.immd_src[0].r2 = 0;
  wqe->send.u.immd_src[0].immdlen = 0;
  size = sizeof wqe->send + sizeof(struct fw_ri_immd);
  plen = 0;
 }
 *len16 = DIV_ROUND_UP(size, 16);
 wqe->send.plen = htobe32(plen);
 return 0;
}
