
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct section_fixture {TYPE_1__* section; int name; } ;
struct ptunit_result {int dummy; } ;
struct TYPE_4__ {int ucount; } ;


 int UINT16_MAX ;
 int pt_mk_section (TYPE_1__**,int ,int,int) ;
 int pt_section_get (TYPE_1__*) ;
 int pte_overflow ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (TYPE_1__*) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result get_overflow(struct section_fixture *sfix)
{
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 sfix->section->ucount = UINT16_MAX;

 errcode = pt_section_get(sfix->section);
 ptu_int_eq(errcode, -pte_overflow);

 sfix->section->ucount = 1;

 return ptu_passed();
}
