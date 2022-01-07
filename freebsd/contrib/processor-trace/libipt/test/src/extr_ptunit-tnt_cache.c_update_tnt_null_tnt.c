
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet_tnt {int dummy; } ;


 int pt_tnt_cache_update_tnt (int *,struct pt_packet_tnt*,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result update_tnt_null_tnt(void)
{
 struct pt_packet_tnt packet;
 int errcode;

 errcode = pt_tnt_cache_update_tnt(((void*)0), &packet, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
