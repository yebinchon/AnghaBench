
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_last_ip {scalar_t__ suppressed; scalar_t__ have_ip; } ;


 int pt_last_ip_query (int *,struct pt_last_ip*) ;
 int pte_noip ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result status_noip(void)
{
 struct pt_last_ip last_ip;
 int errcode;

 last_ip.have_ip = 0;
 last_ip.suppressed = 0;

 errcode = pt_last_ip_query(((void*)0), &last_ip);
 ptu_int_eq(errcode, -pte_noip);

 return ptu_passed();
}
