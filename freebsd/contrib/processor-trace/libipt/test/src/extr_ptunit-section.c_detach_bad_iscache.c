
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct section_fixture {int section; int name; } ;
struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 int pt_section_attach (int ,struct pt_image_section_cache*) ;
 int pt_section_detach (int ,struct pt_image_section_cache*) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result detach_bad_iscache(struct section_fixture *sfix)
{
 struct pt_image_section_cache iscache, bad;
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 errcode = pt_section_attach(sfix->section, &iscache);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_detach(sfix->section, &bad);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_section_detach(sfix->section, &iscache);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
