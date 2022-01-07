
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_section_attach (struct pt_section*,struct pt_image_section_cache*) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result attach_null(void)
{
 struct pt_image_section_cache iscache;
 struct pt_section section;
 int errcode;

 errcode = pt_section_attach(((void*)0), &iscache);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_section_attach(&section, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_section_attach(((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
