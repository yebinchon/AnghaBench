
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int pt_iscache_find (int *,int *,unsigned long long,unsigned long long,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result find_null_filename(struct iscache_fixture *cfix)
{
 int errcode;

 errcode = pt_iscache_find(&cfix->iscache, ((void*)0), 0ull, 0ull, 0ull);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
