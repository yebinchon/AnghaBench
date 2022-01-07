
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;
struct pt_image {int dummy; } ;


 int pt_image_add_cached (struct pt_image*,struct pt_image_section_cache*,int ,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result add_cached_null(void)
{
 struct pt_image_section_cache iscache;
 struct pt_image image;
 int status;

 status = pt_image_add_cached(((void*)0), &iscache, 0, ((void*)0));
 ptu_int_eq(status, -pte_invalid);

 status = pt_image_add_cached(&image, ((void*)0), 0, ((void*)0));
 ptu_int_eq(status, -pte_invalid);

 return ptu_passed();
}
