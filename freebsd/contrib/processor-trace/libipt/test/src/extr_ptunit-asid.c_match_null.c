
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_init (struct pt_asid*) ;
 int pt_asid_match (struct pt_asid*,struct pt_asid*) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result match_null(void)
{
 struct pt_asid asid;
 int errcode;

 pt_asid_init(&asid);

 errcode = pt_asid_match(((void*)0), ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_asid_match(((void*)0), &asid);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_asid_match(&asid, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
