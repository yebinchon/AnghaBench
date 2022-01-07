
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {int dummy; } ;


 int pt_last_ip_init (struct pt_last_ip*) ;
 int pt_last_ip_query (int *,struct pt_last_ip*) ;
 int pte_noip ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result query_initial(void)
{
 struct pt_last_ip last_ip;
 uint64_t ip;
 int errcode;

 pt_last_ip_init(&last_ip);

 errcode = pt_last_ip_query(&ip, &last_ip);
 ptu_int_eq(errcode, -pte_noip);

 return ptu_passed();
}
