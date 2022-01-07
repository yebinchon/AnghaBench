
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_image {int dummy; } ;


 int pt_image_init (struct pt_image*,int *) ;
 char* pt_image_name (struct pt_image*) ;
 int ptu_null (char const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result name_none(void)
{
 struct pt_image image;
 const char *name;

 pt_image_init(&image, ((void*)0));

 name = pt_image_name(&image);
 ptu_null(name);

 return ptu_passed();
}
