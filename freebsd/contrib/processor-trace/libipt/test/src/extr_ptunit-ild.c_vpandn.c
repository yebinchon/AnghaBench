
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_64bit ;
 int ptu_decode_s (int*,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result vpandn(void)
{
 uint8_t insn[] = { 0xc4, 0x41, 0x29, 0xdf, 0xd1 };

 ptu_decode_s(insn, ptem_64bit);

 return ptu_passed();
}
