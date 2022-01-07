
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct time_fixture {int time; int config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_mtc {int ctc; } ;


 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pt_time_update_mtc (int *,struct pt_packet_mtc*,int *) ;
 int pte_no_time ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result mtc(struct time_fixture *tfix)
{
 struct pt_packet_mtc packet;
 uint64_t tsc;
 int errcode;

 packet.ctc = 0xdc;

 errcode = pt_time_update_mtc(&tfix->time, &packet, &tfix->config);
 ptu_int_eq(errcode, 0);

 errcode = pt_time_query_tsc(&tsc, ((void*)0), ((void*)0), &tfix->time);
 ptu_int_eq(errcode, -pte_no_time);

 return ptu_passed();
}
