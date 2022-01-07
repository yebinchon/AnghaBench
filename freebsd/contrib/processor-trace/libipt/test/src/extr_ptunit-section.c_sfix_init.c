
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_fixture {int thrd; int * name; int * file; int * section; } ;
struct ptunit_result {int dummy; } ;


 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,int *) ;
 int ptunit_mkfile (int **,int **,char*) ;
 int ptunit_thrd_init ;

__attribute__((used)) static struct ptunit_result sfix_init(struct section_fixture *sfix)
{
 int errcode;

 sfix->section = ((void*)0);
 sfix->file = ((void*)0);
 sfix->name = ((void*)0);

 errcode = ptunit_mkfile(&sfix->file, &sfix->name, "wb");
 ptu_int_eq(errcode, 0);

 ptu_test(ptunit_thrd_init, &sfix->thrd);

 return ptu_passed();
}
