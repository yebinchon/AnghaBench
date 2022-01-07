
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct rsocket {int opts; size_t target_sge; TYPE_1__* target_sgl; int sbuf_bytes_avail; int sqe_avail; int sseq_no; } ;
struct ibv_sge {int dummy; } ;
struct TYPE_2__ {scalar_t__ length; int addr; scalar_t__ key; } ;


 int RS_OPT_MSG_SEND ;
 int RS_OP_DATA ;
 size_t RS_SGL_SIZE ;
 int rs_msg_set (int ,scalar_t__) ;
 int rs_post_write_msg (struct rsocket*,struct ibv_sge*,int,int ,int,int ,scalar_t__) ;

__attribute__((used)) static int rs_write_data(struct rsocket *rs,
    struct ibv_sge *sgl, int nsge,
    uint32_t length, int flags)
{
 uint64_t addr;
 uint32_t rkey;

 rs->sseq_no++;
 rs->sqe_avail--;
 if (rs->opts & RS_OPT_MSG_SEND)
  rs->sqe_avail--;
 rs->sbuf_bytes_avail -= length;

 addr = rs->target_sgl[rs->target_sge].addr;
 rkey = rs->target_sgl[rs->target_sge].key;

 rs->target_sgl[rs->target_sge].addr += length;
 rs->target_sgl[rs->target_sge].length -= length;

 if (!rs->target_sgl[rs->target_sge].length) {
  if (++rs->target_sge == RS_SGL_SIZE)
   rs->target_sge = 0;
 }

 return rs_post_write_msg(rs, sgl, nsge, rs_msg_set(RS_OP_DATA, length),
     flags, addr, rkey);
}
