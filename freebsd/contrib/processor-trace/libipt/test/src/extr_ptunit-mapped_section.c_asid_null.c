
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_asid {int vmcs; int cr3; } ;


 int pt_asid_no_cr3 ;
 int pt_asid_no_vmcs ;
 struct pt_asid* pt_msec_asid (struct pt_mapped_section*) ;
 int pt_msec_init (struct pt_mapped_section*,int *,int *,int,int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_asid const*) ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result asid_null(void)
{
 struct pt_mapped_section msec;
 const struct pt_asid *pasid;

 pt_msec_init(&msec, ((void*)0), ((void*)0), 0x2000ull, 0x100ull, 0x1000ull);

 pasid = pt_msec_asid(&msec);
 ptu_ptr(pasid);
 ptu_uint_eq(pasid->cr3, pt_asid_no_cr3);
 ptu_uint_eq(pasid->vmcs, pt_asid_no_vmcs);

 return ptu_passed();
}
