
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct test_fixture {int decoder; } ;
struct ptunit_result {int dummy; } ;


 int pt_insn_get_offset (int *,int *) ;
 int pte_nosync ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result get_offset_init(struct test_fixture *tfix)
{
 uint64_t offset;
 int errcode;

 errcode = pt_insn_get_offset(&tfix->decoder, &offset);
 ptu_int_eq(errcode, -pte_nosync);

 return ptu_passed();
}
