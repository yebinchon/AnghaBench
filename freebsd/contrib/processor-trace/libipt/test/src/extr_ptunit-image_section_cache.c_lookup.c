
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {int * section; int iscache; } ;


 int pt_iscache_add (int *,int ,unsigned long long) ;
 int pt_iscache_lookup (int *,struct pt_section**,int *,int) ;
 int pt_section_put (struct pt_section*) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (struct pt_section*,int ) ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result lookup(struct iscache_fixture *cfix)
{
 struct pt_section *section;
 uint64_t laddr;
 int errcode, isid;

 isid = pt_iscache_add(&cfix->iscache, cfix->section[0], 0ull);
 ptu_int_gt(isid, 0);

 errcode = pt_iscache_lookup(&cfix->iscache, &section, &laddr, isid);
 ptu_int_eq(errcode, 0);
 ptu_ptr_eq(section, cfix->section[0]);
 ptu_uint_eq(laddr, 0ull);

 errcode = pt_section_put(section);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
