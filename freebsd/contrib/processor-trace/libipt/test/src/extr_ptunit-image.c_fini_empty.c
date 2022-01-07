
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_image {int dummy; } ;


 int pt_image_fini (struct pt_image*) ;
 int pt_image_init (struct pt_image*,int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result fini_empty(void)
{
 struct pt_image image;

 pt_image_init(&image, ((void*)0));
 pt_image_fini(&image);

 return ptu_passed();
}
