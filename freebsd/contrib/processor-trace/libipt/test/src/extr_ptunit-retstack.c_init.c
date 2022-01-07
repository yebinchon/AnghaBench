
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;
typedef int retstack ;


 int memset (struct pt_retstack*,int,int) ;
 int pt_retstack_init (struct pt_retstack*) ;
 int pt_retstack_is_empty (struct pt_retstack*) ;
 int ptu_int_ne (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result init(void)
{
 struct pt_retstack retstack;
 int status;

 memset(&retstack, 0xcd, sizeof(retstack));

 pt_retstack_init(&retstack);

 status = pt_retstack_is_empty(&retstack);
 ptu_int_ne(status, 0);

 return ptu_passed();
}
