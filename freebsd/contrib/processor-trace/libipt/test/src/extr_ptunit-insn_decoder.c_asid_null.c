
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_insn_decoder {int dummy; } ;
struct pt_asid {int dummy; } ;
typedef int asid ;


 int pt_insn_asid (struct pt_insn_decoder*,struct pt_asid*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result asid_null(void)
{
 struct pt_insn_decoder decoder;
 struct pt_asid asid;
 int errcode;

 errcode = pt_insn_asid(((void*)0), &asid, sizeof(asid));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_insn_asid(&decoder, ((void*)0), sizeof(asid));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
