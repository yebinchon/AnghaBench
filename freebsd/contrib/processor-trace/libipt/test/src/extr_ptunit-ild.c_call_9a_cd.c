
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int PTI_INST_CALL_9A ;
 int ptem_16bit ;
 int ptu_classify_s (int*,int ,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result call_9a_cd(void)
{
 uint8_t insn[] = { 0x9a, 0x00, 0x00, 0x00, 0x00 };

 ptu_classify_s(insn, ptem_16bit, PTI_INST_CALL_9A);

 return ptu_passed();
}
