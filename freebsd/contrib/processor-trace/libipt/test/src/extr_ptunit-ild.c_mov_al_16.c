
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_16bit ;
 int ptu_decode (int*,int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result mov_al_16(void)
{
 uint8_t insn[] = { 0xa0, 0x3f, 0xaa, 0xbb, 0xcc, 0xdd, 0xee };

 ptu_decode(insn, 3, ptem_16bit);

 return ptu_passed();
}
