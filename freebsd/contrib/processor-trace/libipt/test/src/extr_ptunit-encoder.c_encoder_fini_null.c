
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_encoder_fini (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result encoder_fini_null(void)
{
 pt_encoder_fini(((void*)0));

 return ptu_passed();
}
