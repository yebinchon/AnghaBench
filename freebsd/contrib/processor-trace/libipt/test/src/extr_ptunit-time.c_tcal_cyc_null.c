
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int config; int tcal; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cyc {int dummy; } ;


 int pt_tcal_update_cyc (int *,struct pt_packet_cyc*,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tcal_cyc_null(struct time_fixture *tfix)
{
 struct pt_packet_cyc packet;
 int errcode;

 errcode = pt_tcal_update_cyc(((void*)0), &packet, &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_tcal_update_cyc(&tfix->tcal, ((void*)0), &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
