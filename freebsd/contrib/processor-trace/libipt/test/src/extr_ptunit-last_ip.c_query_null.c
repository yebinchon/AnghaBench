
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;


 int pt_last_ip_query (unsigned long long*,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (unsigned long long,unsigned long long) ;

__attribute__((used)) static struct ptunit_result query_null(void)
{
 uint64_t ip = 13ull;
 int errcode;

 errcode = pt_last_ip_query(&ip, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);
 ptu_uint_eq(ip, 13ull);

 return ptu_passed();
}
