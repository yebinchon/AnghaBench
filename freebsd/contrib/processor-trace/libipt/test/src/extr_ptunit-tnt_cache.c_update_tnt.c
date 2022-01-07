
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {int index; int tnt; } ;
struct pt_packet_tnt {unsigned long long bit_size; unsigned long long payload; } ;


 int pt_tnt_cache_init (struct pt_tnt_cache*) ;
 int pt_tnt_cache_update_tnt (struct pt_tnt_cache*,struct pt_packet_tnt*,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result update_tnt(void)
{
 struct pt_tnt_cache tnt_cache;
 struct pt_packet_tnt packet;
 int errcode;

 pt_tnt_cache_init(&tnt_cache);

 packet.bit_size = 4ull;
 packet.payload = 8ull;

 errcode = pt_tnt_cache_update_tnt(&tnt_cache, &packet, ((void*)0));
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(tnt_cache.tnt, 8ull);
 ptu_uint_eq(tnt_cache.index, 1ull << 3);

 return ptu_passed();
}
