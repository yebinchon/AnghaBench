
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_last_ip {int suppressed; int have_ip; int ip; } ;
typedef int last_ip ;


 int memset (struct pt_last_ip*,int,int) ;
 int pt_last_ip_init (struct pt_last_ip*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result init(void)
{
 struct pt_last_ip last_ip;

 memset(&last_ip, 0xcd, sizeof(last_ip));

 pt_last_ip_init(&last_ip);

 ptu_uint_eq(last_ip.ip, 0ull);
 ptu_uint_eq(last_ip.have_ip, 0);
 ptu_uint_eq(last_ip.suppressed, 0);

 return ptu_passed();
}
