
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;


 int ptem_16bit ;
 int ptu_decode_s (int*,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result lds_ind_disp16(void)
{
 uint8_t insn[] = { 0xc5, 0x80, 0x00, 0x00 };

 ptu_decode_s(insn, ptem_16bit);

 return ptu_passed();
}
