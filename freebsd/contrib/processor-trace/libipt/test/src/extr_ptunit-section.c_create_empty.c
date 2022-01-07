
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_fixture {int section; int name; } ;
struct ptunit_result {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 int ptu_null (int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result create_empty(struct section_fixture *sfix)
{
 int errcode;

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x0ull, 0x10ull);
 ptu_int_eq(errcode, -pte_invalid);
 ptu_null(sfix->section);

 return ptu_passed();
}
