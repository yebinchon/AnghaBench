
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_fixture {int * fini; int init; } ;
struct ptunit_suite {int dummy; } ;


 int cfix_init ;
 int cifix_init ;
 int fill ;
 int fill_nomap ;
 int fill_null ;
 int fini_null ;
 int ifix_init ;
 int init_null ;
 int invalidate ;
 int invalidate_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct test_fixture) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int read ;
 int read_nomap ;
 int read_null ;
 int sfix_init ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;
 struct test_fixture sfix, ifix, cfix, cifix;

 sfix.init = sfix_init;
 sfix.fini = ((void*)0);

 ifix.init = ifix_init;
 ifix.fini = ((void*)0);

 cfix.init = cfix_init;
 cfix.fini = ((void*)0);

 cifix.init = cifix_init;
 cifix.fini = ((void*)0);

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init_null);
 ptu_run(suite, fini_null);
 ptu_run(suite, invalidate_null);
 ptu_run(suite, read_null);
 ptu_run(suite, fill_null);

 ptu_run_f(suite, invalidate, sfix);
 ptu_run_f(suite, invalidate, cfix);

 ptu_run_f(suite, read_nomap, sfix);
 ptu_run_f(suite, read_nomap, ifix);
 ptu_run_f(suite, read_nomap, cfix);
 ptu_run_f(suite, read, cifix);

 ptu_run_f(suite, fill_nomap, sfix);
 ptu_run_f(suite, fill_nomap, cfix);
 ptu_run_f(suite, fill, ifix);
 ptu_run_f(suite, fill, cifix);

 return ptunit_report(&suite);
}
