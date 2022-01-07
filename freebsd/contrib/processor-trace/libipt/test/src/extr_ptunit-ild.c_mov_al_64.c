
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_64bit ;
 int ptu_decode_s (int*,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result mov_al_64(void)
{
 uint8_t insn[] = { 0x48, 0xa0, 0x3f, 0xaa, 0xbb, 0xcc, 0xdd, 0xee,
      0xff, 0x11 };

 ptu_decode_s(insn, ptem_64bit);

 return ptu_passed();
}
