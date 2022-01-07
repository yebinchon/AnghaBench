
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int config; int time; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cbr {scalar_t__ ratio; } ;


 int pt_time_update_cbr (int *,struct pt_packet_cbr*,int *) ;
 int pte_bad_packet ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cbr_zero(struct time_fixture *tfix)
{
 struct pt_packet_cbr packet;
 int errcode;

 packet.ratio = 0;

 errcode = pt_time_update_cbr(&tfix->time, &packet, &tfix->config);
 ptu_int_eq(errcode, -pte_bad_packet);

 return ptu_passed();
}
