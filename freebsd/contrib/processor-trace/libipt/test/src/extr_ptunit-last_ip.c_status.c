
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_last_ip {int have_ip; scalar_t__ suppressed; } ;


 int pt_last_ip_query (int *,struct pt_last_ip*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result status(void)
{
 struct pt_last_ip last_ip;
 int errcode;

 last_ip.have_ip = 1;
 last_ip.suppressed = 0;

 errcode = pt_last_ip_query(((void*)0), &last_ip);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
