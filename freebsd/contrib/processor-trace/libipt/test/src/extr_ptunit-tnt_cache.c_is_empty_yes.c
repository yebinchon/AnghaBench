
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {unsigned long long index; } ;


 int pt_tnt_cache_is_empty (struct pt_tnt_cache*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result is_empty_yes(void)
{
 struct pt_tnt_cache tnt_cache;
 int status;

 tnt_cache.index = 0ull;

 status = pt_tnt_cache_is_empty(&tnt_cache);
 ptu_int_eq(status, 1);

 return ptu_passed();
}
