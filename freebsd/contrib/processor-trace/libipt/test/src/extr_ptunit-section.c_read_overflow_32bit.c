
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct section_fixture {int section; int name; } ;
struct ptunit_result {int dummy; } ;


 int pt_mk_section (int *,int ,int,int) ;
 int pt_section_map (int ) ;
 int pt_section_read (int ,int*,int,int) ;
 int pt_section_unmap (int ) ;
 int pte_nomap ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;
 int ptu_uint_eq (int,int) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result read_overflow_32bit(struct section_fixture *sfix)
{
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 }, buffer[] = { 0xcc };
 int status;

 sfix_write(sfix, bytes);

 status = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(status, 0);
 ptu_ptr(sfix->section);

 status = pt_section_map(sfix->section);
 ptu_int_eq(status, 0);

 status = pt_section_read(sfix->section, buffer, 1,
     0xff00000000ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_uint_eq(buffer[0], 0xcc);

 status = pt_section_unmap(sfix->section);
 ptu_int_eq(status, 0);

 return ptu_passed();
}
