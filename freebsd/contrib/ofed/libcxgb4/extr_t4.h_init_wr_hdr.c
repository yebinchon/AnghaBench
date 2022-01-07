
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* len16; scalar_t__* r1; int wrid; void* flags; void* opcode; } ;
union t4_wr {TYPE_1__ send; } ;
typedef void* u8 ;
typedef int u16 ;
typedef enum fw_wr_opcodes { ____Placeholder_fw_wr_opcodes } fw_wr_opcodes ;



__attribute__((used)) static inline void init_wr_hdr(union t4_wr *wqe, u16 wrid,
          enum fw_wr_opcodes opcode, u8 flags, u8 len16)
{
 wqe->send.opcode = (u8)opcode;
 wqe->send.flags = flags;
 wqe->send.wrid = wrid;
 wqe->send.r1[0] = 0;
 wqe->send.r1[1] = 0;
 wqe->send.r1[2] = 0;
 wqe->send.len16 = len16;
}
