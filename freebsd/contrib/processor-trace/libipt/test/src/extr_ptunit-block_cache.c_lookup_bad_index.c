
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;
struct bcache_fixture {int bcache; } ;


 int bfix_nentries ;
 int pt_bcache_lookup (struct pt_bcache_entry*,int ,int ) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result lookup_bad_index(struct bcache_fixture *bfix)
{
 struct pt_bcache_entry bce;
 int errcode;

 errcode = pt_bcache_lookup(&bce, bfix->bcache, bfix_nentries);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
