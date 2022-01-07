
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_asid {int vmcs; int cr3; int size; } ;
typedef int asid ;


 int pt_asid_from_user (struct pt_asid*,int *) ;
 int pt_asid_no_cr3 ;
 int pt_asid_no_vmcs ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result from_user_default(void)
{
 struct pt_asid asid;
 int errcode;

 errcode = pt_asid_from_user(&asid, ((void*)0));
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(asid.size, sizeof(asid));
 ptu_uint_eq(asid.cr3, pt_asid_no_cr3);
 ptu_uint_eq(asid.vmcs, pt_asid_no_vmcs);

 return ptu_passed();
}
