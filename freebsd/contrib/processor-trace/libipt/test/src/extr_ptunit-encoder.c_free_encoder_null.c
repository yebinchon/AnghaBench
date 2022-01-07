
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_free_encoder (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result free_encoder_null(void)
{
 pt_free_encoder(((void*)0));

 return ptu_passed();
}
