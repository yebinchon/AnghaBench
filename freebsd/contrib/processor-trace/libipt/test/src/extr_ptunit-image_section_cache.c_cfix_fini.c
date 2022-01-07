
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int nthreads; int* result; } ;
struct iscache_fixture {TYPE_2__** section; int iscache; TYPE_1__ thrd; } ;
struct TYPE_4__ {int ucount; int acount; int mcount; int iscache; } ;


 int num_sections ;
 int pt_iscache_fini (int *) ;
 int pt_section_put (TYPE_2__*) ;
 int ptu_int_eq (int,int) ;
 int ptu_null (int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,TYPE_1__*) ;
 int ptunit_thrd_fini ;

__attribute__((used)) static struct ptunit_result cfix_fini(struct iscache_fixture *cfix)
{
 int idx, errcode;

 ptu_test(ptunit_thrd_fini, &cfix->thrd);

 for (idx = 0; idx < cfix->thrd.nthreads; ++idx)
  ptu_int_eq(cfix->thrd.result[idx], 0);

 pt_iscache_fini(&cfix->iscache);

 for (idx = 0; idx < num_sections; ++idx) {
  ptu_int_eq(cfix->section[idx]->ucount, 1);
  ptu_int_eq(cfix->section[idx]->acount, 0);
  ptu_int_eq(cfix->section[idx]->mcount, 0);
  ptu_null(cfix->section[idx]->iscache);

  errcode = pt_section_put(cfix->section[idx]);
  ptu_int_eq(errcode, 0);
 }

 return ptu_passed();
}
