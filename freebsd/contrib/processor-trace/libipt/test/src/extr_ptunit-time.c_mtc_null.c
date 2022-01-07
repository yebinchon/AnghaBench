
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int time; int config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_mtc {int dummy; } ;


 int pt_time_update_mtc (int *,struct pt_packet_mtc*,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result mtc_null(struct time_fixture *tfix)
{
 struct pt_packet_mtc packet;
 int errcode;

 errcode = pt_time_update_mtc(((void*)0), &packet, &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_time_update_mtc(&tfix->time, ((void*)0), &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_time_update_mtc(&tfix->time, &packet, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
