
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_msec_cache_init (int *) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result init_null(void)
{
 int status;

 status = pt_msec_cache_init(((void*)0));
 ptu_int_eq(status, -pte_internal);

 return ptu_passed();
}
