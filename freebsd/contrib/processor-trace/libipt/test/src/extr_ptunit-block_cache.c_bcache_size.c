
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_block_cache {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_uint_le (int,int) ;

__attribute__((used)) static struct ptunit_result bcache_size(void)
{
 ptu_uint_le(sizeof(struct pt_block_cache),
      2 * sizeof(struct pt_bcache_entry));

 return ptu_passed();
}
