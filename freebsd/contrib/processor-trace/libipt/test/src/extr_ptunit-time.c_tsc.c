
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct time_fixture {int time; int config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_tsc {int tsc; } ;


 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pt_time_update_tsc (int *,struct pt_packet_tsc*,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result tsc(struct time_fixture *tfix)
{
 struct pt_packet_tsc packet;
 uint64_t tsc;
 uint32_t lost_mtc, lost_cyc;
 int errcode;

 packet.tsc = 0xdedededeull;

 errcode = pt_time_update_tsc(&tfix->time, &packet, &tfix->config);
 ptu_int_eq(errcode, 0);

 errcode = pt_time_query_tsc(&tsc, &lost_mtc, &lost_cyc, &tfix->time);
 ptu_int_eq(errcode, 0);

 ptu_uint_eq(tsc, 0xdedededeull);
 ptu_uint_eq(lost_mtc, 0);
 ptu_uint_eq(lost_cyc, 0);

 return ptu_passed();
}
