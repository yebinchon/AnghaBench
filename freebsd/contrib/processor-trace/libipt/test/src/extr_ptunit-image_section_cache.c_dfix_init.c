
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {struct pt_section** section; int thrd; } ;


 int memset (struct pt_section**,int ,int) ;
 int num_sections ;
 int pt_mk_section (struct pt_section**,char*,int,int) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_section*) ;
 int ptu_test (int ,int *) ;
 int ptunit_thrd_init ;

__attribute__((used)) static struct ptunit_result dfix_init(struct iscache_fixture *cfix)
{
 int idx;

 ptu_test(ptunit_thrd_init, &cfix->thrd);

 memset(cfix->section, 0, sizeof(cfix->section));

 for (idx = 0; idx < num_sections; ++idx) {
  struct pt_section *section;
  int errcode;

  errcode = pt_mk_section(&section, "some-filename",
     idx % 3 == 0 ? 0x1000 : 0x2000,
     idx % 2 == 0 ? 0x1000 : 0x2000);
  ptu_int_eq(errcode, 0);
  ptu_ptr(section);

  cfix->section[idx] = section;
 }

 return ptu_passed();
}
