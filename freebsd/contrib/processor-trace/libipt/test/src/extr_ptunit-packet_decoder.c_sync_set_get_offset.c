
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct test_fixture {int decoder; } ;
struct ptunit_result {int dummy; } ;


 int pt_pkt_get_offset (int *,int *) ;
 int pt_pkt_sync_set (int *,unsigned long long) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result sync_set_get_offset(struct test_fixture *tfix)
{
 uint64_t offset;
 int errcode;

 errcode = pt_pkt_sync_set(&tfix->decoder, 1ull);
 ptu_int_eq(errcode, 0);

 errcode = pt_pkt_get_offset(&tfix->decoder, &offset);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(offset, 1ull);

 return ptu_passed();
}
