
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_iscache_find (int *,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result find_null(void)
{
 int errcode;

 errcode = pt_iscache_find(((void*)0), "filename", 0ull, 0ull, 0ull);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
