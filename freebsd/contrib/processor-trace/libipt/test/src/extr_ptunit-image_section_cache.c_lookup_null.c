
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;


 int pt_iscache_lookup (struct pt_image_section_cache*,struct pt_section**,int *,int ) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result lookup_null(void)
{
 struct pt_image_section_cache iscache;
 struct pt_section *section;
 uint64_t laddr;
 int errcode;

 errcode = pt_iscache_lookup(((void*)0), &section, &laddr, 0);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_iscache_lookup(&iscache, ((void*)0), &laddr, 0);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_iscache_lookup(&iscache, &section, ((void*)0), 0);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
