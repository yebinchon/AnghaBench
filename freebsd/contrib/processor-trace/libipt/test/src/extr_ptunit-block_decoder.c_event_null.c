
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
struct pt_block_decoder {int dummy; } ;
typedef int event ;


 int pt_blk_event (struct pt_block_decoder*,struct pt_event*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result event_null(void)
{
 struct pt_block_decoder decoder;
 struct pt_event event;
 int errcode;

 errcode = pt_blk_event(((void*)0), &event, sizeof(event));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_blk_event(&decoder, ((void*)0), sizeof(event));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
