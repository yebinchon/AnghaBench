
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct bcache_fixture {int bcache; int thrd; } ;


 int bfix_threads ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,int *,int (*) (int ),int ) ;
 int ptunit_thrd_create ;
 int worker (int ) ;

__attribute__((used)) static struct ptunit_result stress(struct bcache_fixture *bfix)
{
 int errcode;
 errcode = worker(bfix->bcache);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
