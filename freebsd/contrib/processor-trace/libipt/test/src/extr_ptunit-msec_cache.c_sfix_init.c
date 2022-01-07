
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_fixture {int image; int mcache; int section; } ;
struct ptunit_result {int dummy; } ;


 int memset (int *,int ,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result sfix_init(struct test_fixture *tfix)
{
 memset(&tfix->section, 0, sizeof(tfix->section));
 memset(&tfix->mcache, 0, sizeof(tfix->mcache));
 memset(&tfix->image, 0, sizeof(tfix->image));

 return ptu_passed();
}
