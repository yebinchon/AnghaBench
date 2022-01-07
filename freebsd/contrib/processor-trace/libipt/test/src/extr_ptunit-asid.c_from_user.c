
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct ptunit_result {int dummy; } ;
struct pt_asid {int size; int cr3; int vmcs; } ;
typedef int asid ;


 int pt_asid_from_user (struct pt_asid*,struct pt_asid*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result from_user(void)
{
 struct pt_asid asid, user;
 int errcode;

 user.size = sizeof(user);
 user.cr3 = 0x4200ull;
 user.vmcs = 0x23000ull;

 errcode = pt_asid_from_user(&asid, &user);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(asid.size, sizeof(asid));
 ptu_uint_eq(asid.cr3, 0x4200ull);
 ptu_uint_eq(asid.vmcs, 0x23000ull);

 return ptu_passed();
}
