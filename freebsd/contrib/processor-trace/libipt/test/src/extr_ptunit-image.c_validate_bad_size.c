
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int size; int section; } ;
struct image_fixture {int image; int * asid; } ;


 int pt_image_find (int *,struct pt_mapped_section*,int *,int) ;
 int pt_image_validate (int *,struct pt_mapped_section*,int,int) ;
 int pt_section_put (int ) ;
 int pte_nomap ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_ge (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result validate_bad_size(struct image_fixture *ifix)
{
 struct pt_mapped_section msec;
 int isid, status;

 isid = pt_image_find(&ifix->image, &msec, &ifix->asid[0], 0x1003ull);
 ptu_int_ge(isid, 0);

 status = pt_section_put(msec.section);
 ptu_int_eq(status, 0);

 msec.size = 0x8ull;

 status = pt_image_validate(&ifix->image, &msec, 0x1004ull, isid);
 ptu_int_eq(status, -pte_nomap);

 return ptu_passed();
}
