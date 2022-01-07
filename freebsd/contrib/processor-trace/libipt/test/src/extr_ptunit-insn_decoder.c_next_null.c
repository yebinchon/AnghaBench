
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_insn_decoder {int dummy; } ;
struct pt_insn {int dummy; } ;
typedef int insn ;


 int pt_insn_next (struct pt_insn_decoder*,struct pt_insn*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result next_null(void)
{
 struct pt_insn_decoder decoder;
 struct pt_insn insn;
 int errcode;

 errcode = pt_insn_next(((void*)0), &insn, sizeof(insn));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_insn_next(&decoder, ((void*)0), sizeof(insn));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
