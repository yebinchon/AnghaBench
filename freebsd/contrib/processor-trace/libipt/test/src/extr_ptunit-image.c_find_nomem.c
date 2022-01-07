
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct image_fixture {int * asid; int image; } ;


 int pt_image_find (int *,struct pt_mapped_section*,int *,int) ;
 int pte_nomap ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result find_nomem(struct image_fixture *ifix)
{
 struct pt_mapped_section msec;
 int status;

 status = pt_image_find(&ifix->image, &msec, &ifix->asid[1], 0x1010ull);
 ptu_int_eq(status, -pte_nomap);

 return ptu_passed();
}
