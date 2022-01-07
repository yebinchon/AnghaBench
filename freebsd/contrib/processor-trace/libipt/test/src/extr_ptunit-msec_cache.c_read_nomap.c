
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_fixture {int image; int mcache; } ;
struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;


 int pt_msec_cache_read (int *,struct pt_mapped_section const**,int *,unsigned long long) ;
 int pte_nomap ;
 int ptu_int_eq (int,int ) ;
 int ptu_null (struct pt_mapped_section const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result read_nomap(struct test_fixture *tfix)
{
 const struct pt_mapped_section *msec;
 int status;

 msec = ((void*)0);

 status = pt_msec_cache_read(&tfix->mcache, &msec, &tfix->image, 0ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_null(msec);

 return ptu_passed();
}
