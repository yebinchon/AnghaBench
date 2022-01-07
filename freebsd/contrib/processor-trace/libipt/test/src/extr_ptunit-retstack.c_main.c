
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int full ;
 int init ;
 int init_null ;
 int overflow ;
 int pop ;
 int pop_empty ;
 int pop_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int query ;
 int query_empty ;
 int query_null ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init);
 ptu_run(suite, init_null);
 ptu_run(suite, query);
 ptu_run(suite, query_empty);
 ptu_run(suite, query_null);
 ptu_run(suite, pop);
 ptu_run(suite, pop_empty);
 ptu_run(suite, pop_null);
 ptu_run(suite, full);
 ptu_run(suite, overflow);

 return ptunit_report(&suite);
}
