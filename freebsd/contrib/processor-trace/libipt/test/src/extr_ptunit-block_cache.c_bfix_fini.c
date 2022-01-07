
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int nthreads; int * result; } ;
struct bcache_fixture {int bcache; TYPE_1__ thrd; } ;


 int pt_bcache_free (int ) ;
 int ptu_int_eq (int ,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,TYPE_1__*) ;
 int ptunit_thrd_fini ;

__attribute__((used)) static struct ptunit_result bfix_fini(struct bcache_fixture *bfix)
{
 int thrd;

 ptu_test(ptunit_thrd_fini, &bfix->thrd);

 for (thrd = 0; thrd < bfix->thrd.nthreads; ++thrd)
  ptu_int_eq(bfix->thrd.result[thrd], 0);

 pt_bcache_free(bfix->bcache);

 return ptu_passed();
}
