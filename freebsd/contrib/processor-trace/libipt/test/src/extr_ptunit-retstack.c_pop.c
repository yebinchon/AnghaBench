
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;


 int pt_retstack_init (struct pt_retstack*) ;
 int pt_retstack_is_empty (struct pt_retstack*) ;
 int pt_retstack_pop (struct pt_retstack*,int *) ;
 int pt_retstack_push (struct pt_retstack*,int) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_ne (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result pop(void)
{
 struct pt_retstack retstack;
 int status;

 pt_retstack_init(&retstack);

 status = pt_retstack_push(&retstack, 0x42ull);
 ptu_int_eq(status, 0);

 status = pt_retstack_is_empty(&retstack);
 ptu_int_eq(status, 0);

 status = pt_retstack_pop(&retstack, ((void*)0));
 ptu_int_eq(status, 0);

 status = pt_retstack_is_empty(&retstack);
 ptu_int_ne(status, 0);

 return ptu_passed();
}
