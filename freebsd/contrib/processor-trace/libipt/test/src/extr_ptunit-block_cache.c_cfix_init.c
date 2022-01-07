
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct bcache_fixture {int * bcache; int thrd; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,int *) ;
 int ptunit_thrd_init ;

__attribute__((used)) static struct ptunit_result cfix_init(struct bcache_fixture *bfix)
{
 ptu_test(ptunit_thrd_init, &bfix->thrd);

 bfix->bcache = ((void*)0);

 return ptu_passed();
}
