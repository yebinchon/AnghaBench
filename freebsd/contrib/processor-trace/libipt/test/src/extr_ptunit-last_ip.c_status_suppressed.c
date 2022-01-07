
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_last_ip {int have_ip; int suppressed; } ;


 int pt_last_ip_query (int *,struct pt_last_ip*) ;
 int pte_ip_suppressed ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result status_suppressed(void)
{
 struct pt_last_ip last_ip;
 int errcode;

 last_ip.have_ip = 1;
 last_ip.suppressed = 1;

 errcode = pt_last_ip_query(((void*)0), &last_ip);
 ptu_int_eq(errcode, -pte_ip_suppressed);

 return ptu_passed();
}
