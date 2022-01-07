
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_block_cache {int dummy; } ;


 struct pt_block_cache* pt_section_bcache (int *) ;
 int ptu_null (struct pt_block_cache*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cache_null(void)
{
 struct pt_block_cache *bcache;

 bcache = pt_section_bcache(((void*)0));
 ptu_null(bcache);

 return ptu_passed();
}
