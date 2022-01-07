
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int PTI_INST_PTWRITE ;
 int ptem_16bit ;
 int ptem_32bit ;
 int ptem_64bit ;
 int ptu_classify_s (int*,int ,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result ptwrite_m32(void)
{
 uint8_t insn[] = { 0xf3, 0x0f, 0xae, 0x67, 0xcc };

 ptu_classify_s(insn, ptem_64bit, PTI_INST_PTWRITE);
 ptu_classify_s(insn, ptem_32bit, PTI_INST_PTWRITE);
 ptu_classify_s(insn, ptem_16bit, PTI_INST_PTWRITE);

 return ptu_passed();
}
