
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ucount; int mcount; } ;
struct TYPE_4__ {TYPE_3__* section; } ;
struct TYPE_5__ {TYPE_1__ msec; } ;
struct test_fixture {TYPE_3__ section; TYPE_2__ mcache; } ;
struct ptunit_result {int dummy; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct test_fixture*) ;
 int sfix_init ;

__attribute__((used)) static struct ptunit_result cfix_init(struct test_fixture *tfix)
{
 ptu_test(sfix_init, tfix);

 tfix->mcache.msec.section = &tfix->section;

 tfix->section.ucount = 1;
 tfix->section.mcount = 1;

 return ptu_passed();
}
