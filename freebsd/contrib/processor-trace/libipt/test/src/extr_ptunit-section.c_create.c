
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct section_fixture {int section; int name; } ;
struct ptunit_result {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 char* pt_section_filename (int ) ;
 int pt_section_offset (int ) ;
 int pt_section_size (int ) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;
 int ptu_str_eq (char const*,int ) ;
 int ptu_uint_eq (int ,int) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result create(struct section_fixture *sfix)
{
 const char *name;
 uint8_t bytes[] = { 0xcc, 0xcc, 0xcc, 0xcc, 0xcc };
 uint64_t offset, size;
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 name = pt_section_filename(sfix->section);
 ptu_str_eq(name, sfix->name);

 offset = pt_section_offset(sfix->section);
 ptu_uint_eq(offset, 0x1ull);

 size = pt_section_size(sfix->section);
 ptu_uint_eq(size, 0x3ull);

 return ptu_passed();
}
