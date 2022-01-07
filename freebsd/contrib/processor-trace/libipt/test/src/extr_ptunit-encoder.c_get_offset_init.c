
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct test_fixture {int encoder; } ;
struct ptunit_result {int dummy; } ;


 int pt_enc_get_offset (int *,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result get_offset_init(struct test_fixture *tfix)
{
 uint64_t offset;
 int errcode;

 errcode = pt_enc_get_offset(&tfix->encoder, &offset);
 ptu_int_eq(errcode, 0);
 ptu_uint_eq(offset, 0ull);

 return ptu_passed();
}
