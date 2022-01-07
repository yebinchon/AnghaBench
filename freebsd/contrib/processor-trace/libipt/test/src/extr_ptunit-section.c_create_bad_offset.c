
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_fixture {int name; int section; } ;
struct ptunit_result {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result create_bad_offset(struct section_fixture *sfix)
{
 int errcode;

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x10ull, 0x0ull);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
