
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ibv_send_wr {int opcode; int imm_data; } ;





 int htobe32 (int ) ;

__attribute__((used)) static uint32_t send_ieth(struct ibv_send_wr *wr)
{
 switch (wr->opcode) {
 case 129:
 case 130:
  return wr->imm_data;
 case 128:
  return htobe32(wr->imm_data);
 default:
  return 0;
 }
}
