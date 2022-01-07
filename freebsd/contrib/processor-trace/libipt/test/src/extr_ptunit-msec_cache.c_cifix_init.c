
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * section; } ;
struct test_fixture {int section; TYPE_1__ image; } ;
struct ptunit_result {int dummy; } ;


 int cfix_init ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct test_fixture*) ;

__attribute__((used)) static struct ptunit_result cifix_init(struct test_fixture *tfix)
{
 ptu_test(cfix_init, tfix);

 tfix->image.section = &tfix->section;

 return ptu_passed();
}
