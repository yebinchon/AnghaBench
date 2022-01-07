
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_block_decoder {int dummy; } ;
struct pt_block {int dummy; } ;
typedef int block ;


 int pt_blk_next (struct pt_block_decoder*,struct pt_block*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result next_null(void)
{
 struct pt_block_decoder decoder;
 struct pt_block block;
 int errcode;

 errcode = pt_blk_next(((void*)0), &block, sizeof(block));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_blk_next(&decoder, ((void*)0), sizeof(block));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
