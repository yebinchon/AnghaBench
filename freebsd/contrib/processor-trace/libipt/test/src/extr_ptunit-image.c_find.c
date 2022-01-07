
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int section; int vaddr; } ;
struct image_fixture {int * section; int * asid; int image; } ;


 int pt_image_find (int *,struct pt_mapped_section*,int *,int) ;
 int pt_section_put (int ) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (int ,int *) ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result find(struct image_fixture *ifix)
{
 struct pt_mapped_section msec;
 int status;

 status = pt_image_find(&ifix->image, &msec, &ifix->asid[1], 0x2003ull);
 ptu_int_eq(status, 11);
 ptu_ptr_eq(msec.section, &ifix->section[1]);
 ptu_uint_eq(msec.vaddr, 0x2000ull);

 status = pt_section_put(msec.section);
 ptu_int_eq(status, 0);

 return ptu_passed();
}
