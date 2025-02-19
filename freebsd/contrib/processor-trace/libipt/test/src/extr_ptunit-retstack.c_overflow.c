
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;


 int pt_retstack_init (struct pt_retstack*) ;
 int pt_retstack_is_empty (struct pt_retstack*) ;
 int pt_retstack_pop (struct pt_retstack*,scalar_t__*) ;
 int pt_retstack_push (struct pt_retstack*,scalar_t__) ;
 scalar_t__ pt_retstack_size ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_ne (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct ptunit_result overflow(void)
{
 struct pt_retstack retstack;
 uint64_t ip, idx;
 int status;

 pt_retstack_init(&retstack);

 for (idx = 0; idx <= pt_retstack_size; ++idx) {
  status = pt_retstack_push(&retstack, idx);
  ptu_int_eq(status, 0);
 }

 status = pt_retstack_is_empty(&retstack);
 ptu_int_eq(status, 0);

 for (idx = pt_retstack_size; idx > 0; --idx) {
  status = pt_retstack_pop(&retstack, &ip);
  ptu_int_eq(status, 0);
  ptu_uint_eq(ip, idx);
 }

 status = pt_retstack_is_empty(&retstack);
 ptu_int_ne(status, 0);

 return ptu_passed();
}
