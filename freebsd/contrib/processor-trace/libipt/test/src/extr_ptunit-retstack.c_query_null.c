
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;


 int pt_retstack_pop (int *,int*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result query_null(void)
{
 uint64_t ip;
 int status;

 ip = 0x42ull;
 status = pt_retstack_pop(((void*)0), &ip);
 ptu_int_eq(status, -pte_invalid);
 ptu_uint_eq(ip, 0x42ull);

 return ptu_passed();
}
