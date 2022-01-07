
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_16bit ;
 int ptem_32bit ;
 int ptu_decode_s (int*,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result bound(void)
{
 uint8_t insn[] = { 0x62, 0x02 };

 ptu_decode_s(insn, ptem_32bit);
 ptu_decode_s(insn, ptem_16bit);

 return ptu_passed();
}
