
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {int iscache; int * section; } ;


 int pt_iscache_add (int *,int ,unsigned long long) ;
 int pt_iscache_clear (int *) ;
 int pt_iscache_lookup (int *,struct pt_section**,int *,int) ;
 int pte_bad_image ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result clear_lookup(struct iscache_fixture *cfix)
{
 struct pt_section *section;
 uint64_t laddr;
 int errcode, isid;

 isid = pt_iscache_add(&cfix->iscache, cfix->section[0], 0ull);
 ptu_int_gt(isid, 0);

 errcode = pt_iscache_clear(&cfix->iscache);
 ptu_int_eq(errcode, 0);

 errcode = pt_iscache_lookup(&cfix->iscache, &section, &laddr, isid);
 ptu_int_eq(errcode, -pte_bad_image);

 return ptu_passed();
}
