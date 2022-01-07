
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {unsigned long long ip; int have_ip; int suppressed; } ;


 int pt_last_ip_query (unsigned long long*,struct pt_last_ip*) ;
 int pte_ip_suppressed ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (unsigned long long,unsigned long long) ;

__attribute__((used)) static struct ptunit_result query_suppressed(void)
{
 struct pt_last_ip last_ip;
 uint64_t ip = 13ull;
 int errcode;

 last_ip.ip = 42ull;
 last_ip.have_ip = 1;
 last_ip.suppressed = 1;

 errcode = pt_last_ip_query(&ip, &last_ip);
 ptu_int_eq(errcode, -pte_ip_suppressed);
 ptu_uint_eq(ip, 0ull);

 return ptu_passed();
}
