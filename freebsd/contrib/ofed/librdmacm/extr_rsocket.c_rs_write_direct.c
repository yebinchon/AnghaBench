
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct rsocket {int sbuf_bytes_avail; int sqe_avail; } ;
struct TYPE_2__ {int key; scalar_t__ addr; } ;
struct rs_iomap {TYPE_1__ sge; scalar_t__ offset; } ;
struct ibv_sge {int dummy; } ;


 int RS_OP_WRITE ;
 int rs_msg_set (int ,scalar_t__) ;
 int rs_post_write (struct rsocket*,struct ibv_sge*,int,int ,int,scalar_t__,int ) ;

__attribute__((used)) static int rs_write_direct(struct rsocket *rs, struct rs_iomap *iom, uint64_t offset,
      struct ibv_sge *sgl, int nsge, uint32_t length, int flags)
{
 uint64_t addr;

 rs->sqe_avail--;
 rs->sbuf_bytes_avail -= length;

 addr = iom->sge.addr + offset - iom->offset;
 return rs_post_write(rs, sgl, nsge, rs_msg_set(RS_OP_WRITE, length),
        flags, addr, iom->sge.key);
}
