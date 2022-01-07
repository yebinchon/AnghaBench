
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct image_fixture {int image; } ;


 int pt_image_fini (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result dfix_fini(struct image_fixture *ifix)
{
 pt_image_fini(&ifix->image);

 return ptu_passed();
}
