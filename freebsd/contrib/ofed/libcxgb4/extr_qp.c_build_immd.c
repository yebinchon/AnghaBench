
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct t4_sq {int dummy; } ;
struct ibv_send_wr {int num_sge; TYPE_1__* sg_list; } ;
struct fw_ri_immd {int immdlen; scalar_t__ r2; scalar_t__ r1; int op; scalar_t__ data; } ;
struct TYPE_2__ {int length; scalar_t__ addr; } ;


 int EMSGSIZE ;
 int FW_RI_DATA_IMMD ;
 int ROUND_UP (int,int) ;
 int htobe32 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int build_immd(struct t4_sq *sq, struct fw_ri_immd *immdp,
        struct ibv_send_wr *wr, int max, u32 *plenp)
{
 u8 *dstp, *srcp;
 u32 plen = 0;
 int i;
 int len;

 dstp = (u8 *)immdp->data;
 for (i = 0; i < wr->num_sge; i++) {
  if ((plen + wr->sg_list[i].length) > max)
   return -EMSGSIZE;
  srcp = (u8 *)(unsigned long)wr->sg_list[i].addr;
  plen += wr->sg_list[i].length;
  len = wr->sg_list[i].length;
  memcpy(dstp, srcp, len);
  dstp += len;
  srcp += len;
 }
 len = ROUND_UP(plen + 8, 16) - (plen + 8);
 if (len)
  memset(dstp, 0, len);
 immdp->op = FW_RI_DATA_IMMD;
 immdp->r1 = 0;
 immdp->r2 = 0;
 immdp->immdlen = htobe32(plen);
 *plenp = plen;
 return 0;
}
