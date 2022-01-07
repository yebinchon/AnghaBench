
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_pkt_sync_backward (int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result sync_backward_null(void)
{
 int errcode;

 errcode = pt_pkt_sync_backward(((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
