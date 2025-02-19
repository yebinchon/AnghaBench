
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_config_from_user (struct pt_config*,struct pt_config*) ;
 int pte_internal ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result from_user_null(void)
{
 struct pt_config config;
 int errcode;

 errcode = pt_config_from_user(((void*)0), &config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_config_from_user(&config, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
