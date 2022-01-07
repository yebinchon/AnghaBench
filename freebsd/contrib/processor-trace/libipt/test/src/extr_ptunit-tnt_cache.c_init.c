
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tnt_cache ;
struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {int index; int tnt; } ;


 int memset (struct pt_tnt_cache*,int,int) ;
 int pt_tnt_cache_init (struct pt_tnt_cache*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result init(void)
{
 struct pt_tnt_cache tnt_cache;

 memset(&tnt_cache, 0xcd, sizeof(tnt_cache));

 pt_tnt_cache_init(&tnt_cache);

 ptu_uint_eq(tnt_cache.tnt, 0ull);
 ptu_uint_eq(tnt_cache.index, 0ull);

 return ptu_passed();
}
