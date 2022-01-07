
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int PTI_INST_JMP_FFr5 ;
 int ptem_64bit ;
 int ptu_classify_s (int*,int ,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result jmp_ff_5(void)
{
 uint8_t insn[] = { 0xff, 0x2c, 0x25, 0x00, 0x00, 0x00, 0x00 };

 ptu_classify_s(insn, ptem_64bit, PTI_INST_JMP_FFr5);

 return ptu_passed();
}
