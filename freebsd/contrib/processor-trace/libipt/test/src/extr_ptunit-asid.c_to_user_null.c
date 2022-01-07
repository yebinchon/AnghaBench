
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_asid {int dummy; } ;
typedef int asid ;


 int pt_asid_init (struct pt_asid*) ;
 int pt_asid_to_user (int *,struct pt_asid*,int) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result to_user_null(void)
{
 struct pt_asid asid;
 int errcode;

 pt_asid_init(&asid);

 errcode = pt_asid_to_user(((void*)0), ((void*)0), sizeof(asid));
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_asid_to_user(((void*)0), &asid, sizeof(asid));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
