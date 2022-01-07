
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct ptunit_result {int dummy; } ;
struct pt_asid {int vmcs; int cr3; int size; } ;


 int memset (struct pt_asid*,int,int) ;
 int pt_asid_init (struct pt_asid*) ;
 int pt_asid_to_user (struct pt_asid*,struct pt_asid*,int) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result to_user_small(void)
{
 struct pt_asid asid, user;
 int errcode;

 memset(&user, 0xcc, sizeof(user));
 pt_asid_init(&asid);

 errcode = pt_asid_to_user(&user, &asid, sizeof(user.size));
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(user.size, sizeof(user.size));
 ptu_uint_eq(user.cr3, 0xccccccccccccccccull);
 ptu_uint_eq(user.vmcs, 0xccccccccccccccccull);

 return ptu_passed();
}
