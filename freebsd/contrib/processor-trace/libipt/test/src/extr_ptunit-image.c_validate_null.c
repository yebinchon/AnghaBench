
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct image_fixture {int image; } ;


 int pt_image_validate (int *,struct pt_mapped_section*,int,int) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result validate_null(struct image_fixture *ifix)
{
 struct pt_mapped_section msec;
 int status;

 status = pt_image_validate(((void*)0), &msec, 0x1004ull, 10);
 ptu_int_eq(status, -pte_internal);

 status = pt_image_validate(&ifix->image, ((void*)0), 0x1004ull, 10);
 ptu_int_eq(status, -pte_internal);

 return ptu_passed();
}
