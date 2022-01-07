
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct section_fixture {int * section; } ;
struct ptunit_result {int dummy; } ;


 int pt_section_memsize (int *,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result memsize_null(struct section_fixture *sfix)
{
 uint64_t size;
 int errcode;

 errcode = pt_section_memsize(((void*)0), &size);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_section_memsize(sfix->section, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_section_memsize(((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
