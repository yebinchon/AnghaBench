
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct x86emu {int dummy; } ;


 int CLEAR_FLAG (int ) ;
 int CONDITIONAL_SET_FLAG (int,int ) ;
 int F_AF ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int PARITY (int) ;
 int XOR2 (int) ;

__attribute__((used)) static uint8_t
cmp_byte(struct x86emu *emu, uint8_t d, uint8_t s)
{
 uint32_t res;
 uint32_t bc;

 res = d - s;
 CLEAR_FLAG(F_CF);
 CONDITIONAL_SET_FLAG(res & 0x80, F_SF);
 CONDITIONAL_SET_FLAG((res & 0xff) == 0, F_ZF);
 CONDITIONAL_SET_FLAG(PARITY(res & 0xff), F_PF);


 bc = (res & (~d | s)) | (~d & s);
 CONDITIONAL_SET_FLAG(bc & 0x80, F_CF);
 CONDITIONAL_SET_FLAG(XOR2(bc >> 6), F_OF);
 CONDITIONAL_SET_FLAG(bc & 0x8, F_AF);
 return d;
}
