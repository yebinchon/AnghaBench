
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {unsigned long long tnt; unsigned long long index; } ;


 int pt_tnt_cache_query (struct pt_tnt_cache*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (unsigned long long,int ) ;

__attribute__((used)) static struct ptunit_result query_not_taken(void)
{
 struct pt_tnt_cache tnt_cache;
 int status;

 tnt_cache.tnt = 0ull;
 tnt_cache.index = 1ull;

 status = pt_tnt_cache_query(&tnt_cache);
 ptu_int_eq(status, 0);
 ptu_uint_eq(tnt_cache.index, 0);

 return ptu_passed();
}
