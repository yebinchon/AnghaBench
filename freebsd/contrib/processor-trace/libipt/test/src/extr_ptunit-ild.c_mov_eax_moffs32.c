
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_32bit ;
 int ptu_decode_s (int*,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result mov_eax_moffs32(void)
{
 uint8_t insn[] = { 0xa1, 0x00, 0x00, 0x00, 0x00 };

 ptu_decode_s(insn, ptem_32bit);

 return ptu_passed();
}
