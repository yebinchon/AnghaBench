
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_from_user (int *,struct pt_asid*) ;
 int pt_asid_init (struct pt_asid*) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result from_user_null(void)
{
 struct pt_asid user;
 int errcode;

 pt_asid_init(&user);

 errcode = pt_asid_from_user(((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_asid_from_user(((void*)0), &user);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
