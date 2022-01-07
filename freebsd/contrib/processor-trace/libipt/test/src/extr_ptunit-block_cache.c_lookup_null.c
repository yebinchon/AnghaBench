
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_block_cache {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;


 int pt_bcache_lookup (struct pt_bcache_entry*,struct pt_block_cache*,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result lookup_null(void)
{
 struct pt_bcache_entry bce;
 struct pt_block_cache bcache;
 int errcode;

 errcode = pt_bcache_lookup(&bce, ((void*)0), 0ull);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_bcache_lookup(((void*)0), &bcache, 0ull);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
