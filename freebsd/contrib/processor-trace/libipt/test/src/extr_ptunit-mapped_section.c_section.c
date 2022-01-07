
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct pt_mapped_section {int dummy; } ;


 int pt_msec_init (struct pt_mapped_section*,struct pt_section*,int *,int,int,int) ;
 struct pt_section* pt_msec_section (struct pt_mapped_section*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (struct pt_section*,struct pt_section*) ;

__attribute__((used)) static struct ptunit_result section(void)
{
 static struct pt_section section;
 struct pt_mapped_section msec;
 struct pt_section *psection;

 pt_msec_init(&msec, &section, ((void*)0), 0x2000ull, 0x100ull, 0x1000ull);

 psection = pt_msec_section(&msec);
 ptu_ptr_eq(psection, &section);

 return ptu_passed();
}
