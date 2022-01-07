
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_last_ip {int ip; int have_ip; int suppressed; } ;


 int pt_last_ip_update_ip (struct pt_last_ip*,int *,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result update_ip_null_packet(uint32_t have_ip)
{
 struct pt_last_ip last_ip;
 int errcode;

 last_ip.ip = 0x7fffffffffffffffull;
 last_ip.have_ip = have_ip;
 last_ip.suppressed = 0;

 errcode = pt_last_ip_update_ip(&last_ip, ((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);
 ptu_uint_eq(last_ip.ip, 0x7fffffffffffffffull);
 ptu_uint_eq(last_ip.have_ip, have_ip);
 ptu_uint_eq(last_ip.suppressed, 0);

 return ptu_passed();
}
