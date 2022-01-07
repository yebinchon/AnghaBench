
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_block_decoder {int dummy; } ;


 int pt_blk_get_offset (struct pt_block_decoder*,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result get_offset_null(void)
{
 struct pt_block_decoder decoder;
 uint64_t offset;
 int errcode;

 errcode = pt_blk_get_offset(((void*)0), &offset);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_blk_get_offset(&decoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
