
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_iscache_add_file (struct pt_image_section_cache*,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result add_file_null(void)
{
 struct pt_image_section_cache iscache;
 int errcode;

 errcode = pt_iscache_add_file(((void*)0), "filename", 0ull, 0ull, 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_iscache_add_file(&iscache, ((void*)0), 0ull, 0ull, 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
