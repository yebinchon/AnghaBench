
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet_ip {int dummy; } ;


 int pt_last_ip_update_ip (int *,struct pt_packet_ip*,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result update_ip_null_ip(void)
{
 struct pt_packet_ip packet;
 int errcode;

 errcode = pt_last_ip_update_ip(((void*)0), &packet, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
