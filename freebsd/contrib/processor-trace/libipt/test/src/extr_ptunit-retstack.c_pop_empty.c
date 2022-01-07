
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;


 int pt_retstack_init (struct pt_retstack*) ;
 int pt_retstack_pop (struct pt_retstack*,int *) ;
 int pte_retstack_empty ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result pop_empty(void)
{
 struct pt_retstack retstack;
 int status;

 pt_retstack_init(&retstack);

 status = pt_retstack_pop(&retstack, ((void*)0));
 ptu_int_eq(status, -pte_retstack_empty);

 return ptu_passed();
}
