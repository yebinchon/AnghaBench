
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct time_fixture {int time; int config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cbr {int ratio; } ;


 int pt_time_query_cbr (int *,int *) ;
 int pt_time_update_cbr (int *,struct pt_packet_cbr*,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result cbr(struct time_fixture *tfix)
{
 struct pt_packet_cbr packet;
 uint32_t cbr;
 int errcode;

 packet.ratio = 0x38;

 errcode = pt_time_update_cbr(&tfix->time, &packet, &tfix->config);
 ptu_int_eq(errcode, 0);

 errcode = pt_time_query_cbr(&cbr, &tfix->time);
 ptu_int_eq(errcode, 0);

 ptu_uint_eq(cbr, 0x38);

 return ptu_passed();
}
