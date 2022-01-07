
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct time_fixture {int time; int config; int tcal; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cyc {int value; } ;


 int pt_tcal_fcr (int *,int *) ;
 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pt_time_update_cyc (int *,struct pt_packet_cyc*,int *,int ) ;
 int pte_no_time ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cyc(struct time_fixture *tfix)
{
 struct pt_packet_cyc packet;
 uint64_t fcr, tsc;
 int errcode;

 errcode = pt_tcal_fcr(&fcr, &tfix->tcal);
 ptu_int_eq(errcode, 0);

 packet.value = 0xdc;

 errcode = pt_time_update_cyc(&tfix->time, &packet, &tfix->config, fcr);
 ptu_int_eq(errcode, 0);

 errcode = pt_time_query_tsc(&tsc, ((void*)0), ((void*)0), &tfix->time);
 ptu_int_eq(errcode, -pte_no_time);

 return ptu_passed();
}
