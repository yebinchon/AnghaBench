
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_msec_cache {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;
typedef int mcache ;


 int memset (struct pt_msec_cache*,int ,int) ;
 int pt_msec_cache_fill (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,struct pt_asid*,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result fill_null(void)
{
 const struct pt_mapped_section *msec;
 struct pt_msec_cache mcache;
 struct pt_image image;
 struct pt_asid asid;
 int status;

 memset(&mcache, 0, sizeof(mcache));

 status = pt_msec_cache_fill(((void*)0), &msec, &image, &asid, 0ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_msec_cache_fill(&mcache, ((void*)0), &image, &asid, 0ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_msec_cache_fill(&mcache, &msec, ((void*)0), &asid, 0ull);
 ptu_int_eq(status, -pte_internal);

 status = pt_msec_cache_fill(&mcache, &msec, &image, ((void*)0), 0ull);
 ptu_int_eq(status, -pte_internal);

 return ptu_passed();
}
