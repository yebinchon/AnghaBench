
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_asid {int cr3; int vmcs; } ;


 int pt_asid_init (struct pt_asid*) ;
 struct pt_asid* pt_msec_asid (struct pt_mapped_section*) ;
 int pt_msec_init (struct pt_mapped_section*,int *,struct pt_asid*,int,int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_asid const*) ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result asid(void)
{
 struct pt_mapped_section msec;
 struct pt_asid asid;
 const struct pt_asid *pasid;

 pt_asid_init(&asid);
 asid.cr3 = 0xa00000ull;
 asid.vmcs = 0xb00000ull;

 pt_msec_init(&msec, ((void*)0), &asid, 0x2000ull, 0x100ull, 0x1000ull);

 pasid = pt_msec_asid(&msec);
 ptu_ptr(pasid);
 ptu_uint_eq(pasid->cr3, asid.cr3);
 ptu_uint_eq(pasid->vmcs, asid.vmcs);

 return ptu_passed();
}
