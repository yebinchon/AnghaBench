
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct section_fixture {int section; int name; } ;
struct ptunit_result {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 int pt_section_map (int ) ;
 int pt_section_memsize (int ,int *) ;
 int pt_section_unmap (int ) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;
 int ptu_uint_eq (int ,unsigned long long) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result memsize_unmap(struct section_fixture *sfix)
{
 uint64_t memsize;
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 errcode = pt_section_map(sfix->section);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_unmap(sfix->section);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_memsize(sfix->section, &memsize);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(memsize, 0ull);

 return ptu_passed();
}
