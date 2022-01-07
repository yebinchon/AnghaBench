
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int size; } ;


 int pt_config_from_user (struct pt_config*,struct pt_config*) ;
 int pte_bad_config ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result from_user_too_small(void)
{
 struct pt_config config, user;
 int errcode;

 user.size = sizeof(config.size);

 errcode = pt_config_from_user(&config, &user);
 ptu_int_eq(errcode, -pte_bad_config);

 return ptu_passed();
}
