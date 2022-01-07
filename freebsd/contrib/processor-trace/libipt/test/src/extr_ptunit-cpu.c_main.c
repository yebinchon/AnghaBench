
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int cpu_incomplete ;
 int cpu_invalid ;
 int cpu_null ;
 int cpu_valid ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, cpu_valid);
 ptu_run(suite, cpu_null);
 ptu_run(suite, cpu_incomplete);
 ptu_run(suite, cpu_invalid);

 return ptunit_report(&suite);
}
