
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_block_decoder {int dummy; } ;


 int pt_blk_time (struct pt_block_decoder*,int *,int *,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result time_null(void)
{
 struct pt_block_decoder decoder;
 uint64_t time;
 uint32_t lost_mtc, lost_cyc;
 int errcode;

 errcode = pt_blk_time(((void*)0), &time, &lost_mtc, &lost_cyc);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_blk_time(&decoder, ((void*)0), &lost_mtc, &lost_cyc);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
