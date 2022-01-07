
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int config; int time; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_tma {int ctc; int fc; } ;


 int pt_time_update_tma (int *,struct pt_packet_tma*,int *) ;
 int pte_bad_context ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tma(struct time_fixture *tfix)
{
 struct pt_packet_tma packet;
 int errcode;

 packet.ctc = 0xdc;
 packet.fc = 0xf;

 errcode = pt_time_update_tma(&tfix->time, &packet, &tfix->config);
 ptu_int_eq(errcode, -pte_bad_context);

 return ptu_passed();
}
