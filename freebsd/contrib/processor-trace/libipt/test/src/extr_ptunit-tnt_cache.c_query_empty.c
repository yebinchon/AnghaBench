
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {unsigned long long index; } ;


 int pt_tnt_cache_query (struct pt_tnt_cache*) ;
 int pte_bad_query ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result query_empty(void)
{
 struct pt_tnt_cache tnt_cache;
 int status;

 tnt_cache.index = 0ull;

 status = pt_tnt_cache_query(&tnt_cache);
 ptu_int_eq(status, -pte_bad_query);

 return ptu_passed();
}
