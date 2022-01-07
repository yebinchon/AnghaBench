
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_packet_ip {int ip; int ipc; } ;
struct pt_last_ip {int ip; int have_ip; int suppressed; } ;


 int pt_ipc_sext_48 ;
 int pt_last_ip_update_ip (struct pt_last_ip*,struct pt_packet_ip*,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result update_ip_sext48(uint32_t have_ip)
{
 struct pt_last_ip last_ip;
 struct pt_packet_ip packet;
 int errcode;

 last_ip.ip = 0x7fffffffffffffffull;
 last_ip.have_ip = have_ip;
 last_ip.suppressed = 0;

 packet.ipc = pt_ipc_sext_48;
 packet.ip = 0xff00000000ffull;

 errcode = pt_last_ip_update_ip(&last_ip, &packet, ((void*)0));
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(last_ip.ip, 0xffffff00000000ffull);
 ptu_uint_eq(last_ip.have_ip, 1);
 ptu_uint_eq(last_ip.suppressed, 0);

 return ptu_passed();
}
