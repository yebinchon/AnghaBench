
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_insn_decoder {int dummy; } ;


 int pt_insn_core_bus_ratio (struct pt_insn_decoder*,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cbr_null(void)
{
 struct pt_insn_decoder decoder;
 uint32_t cbr;
 int errcode;

 errcode = pt_insn_core_bus_ratio(((void*)0), &cbr);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_insn_core_bus_ratio(&decoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
