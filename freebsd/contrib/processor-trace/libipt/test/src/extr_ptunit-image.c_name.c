
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct image_fixture {int image; } ;


 int pt_image_init (int *,char*) ;
 char* pt_image_name (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_str_eq (char const*,char*) ;

__attribute__((used)) static struct ptunit_result name(struct image_fixture *ifix)
{
 const char *name;

 pt_image_init(&ifix->image, "image-name");

 name = pt_image_name(&ifix->image);
 ptu_str_eq(name, "image-name");

 return ptu_passed();
}
