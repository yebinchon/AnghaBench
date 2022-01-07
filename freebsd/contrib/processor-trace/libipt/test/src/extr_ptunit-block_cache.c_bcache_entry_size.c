
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result bcache_entry_size(void)
{
 ptu_uint_eq(sizeof(struct pt_bcache_entry), sizeof(uint32_t));

 return ptu_passed();
}
