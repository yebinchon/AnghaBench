
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_image {int dummy; } ;


 struct pt_image* pt_insn_get_image (int *) ;
 int ptu_null (struct pt_image const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result get_image_null(void)
{
 const struct pt_image *image;

 image = pt_insn_get_image(((void*)0));
 ptu_null(image);

 return ptu_passed();
}
