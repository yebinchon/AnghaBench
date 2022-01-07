
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_msec_cache {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_image {int dummy; } ;


 int pt_msec_cache_read (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result read_null(void)
{
 const struct pt_mapped_section *msec;
 struct pt_msec_cache mcache;
 struct pt_image image;
 int status;

 status = pt_msec_cache_read(((void*)0), &msec, &image, 0ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_msec_cache_read(&mcache, ((void*)0), &image, 0ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_msec_cache_read(&mcache, &msec, ((void*)0), 0ull);
 ptu_int_eq(status, -pte_internal);

 return ptu_passed();
}
