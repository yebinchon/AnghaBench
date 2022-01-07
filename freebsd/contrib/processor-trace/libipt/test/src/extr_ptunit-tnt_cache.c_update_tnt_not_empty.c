
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {unsigned long long tnt; unsigned long long index; } ;
struct pt_packet_tnt {int dummy; } ;


 int pt_tnt_cache_update_tnt (struct pt_tnt_cache*,struct pt_packet_tnt*,int *) ;
 int pte_bad_context ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (unsigned long long,unsigned long long) ;

__attribute__((used)) static struct ptunit_result update_tnt_not_empty(void)
{
 struct pt_tnt_cache tnt_cache;
 struct pt_packet_tnt packet;
 int errcode;

 tnt_cache.tnt = 42ull;
 tnt_cache.index = 12ull;

 errcode = pt_tnt_cache_update_tnt(&tnt_cache, &packet, ((void*)0));
 ptu_int_eq(errcode, -pte_bad_context);
 ptu_uint_eq(tnt_cache.tnt, 42ull);
 ptu_uint_eq(tnt_cache.index, 12ull);

 return ptu_passed();
}
