
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int time; int config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_tma {int dummy; } ;


 int pt_time_update_tma (int *,struct pt_packet_tma*,int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tma_null(struct time_fixture *tfix)
{
 struct pt_packet_tma packet;
 int errcode;

 errcode = pt_time_update_tma(((void*)0), &packet, &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_time_update_tma(&tfix->time, ((void*)0), &tfix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_time_update_tma(&tfix->time, &packet, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
