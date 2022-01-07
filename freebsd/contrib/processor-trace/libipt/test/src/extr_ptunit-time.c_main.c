
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_fixture {int * fini; int init; } ;
struct ptunit_suite {int dummy; } ;


 int cbr ;
 int cbr_null ;
 int cbr_zero ;
 int cyc ;
 int cyc_null ;
 int mtc ;
 int mtc_null ;
 int ptu_run_f (struct ptunit_suite,int ,struct time_fixture) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int query_cbr_none ;
 int query_cbr_null ;
 int query_tsc_none ;
 int query_tsc_null ;
 int tcal_cbr_null ;
 int tcal_cbr_zero ;
 int tcal_cyc_null ;
 int tcal_mtc_null ;
 int tfix_init ;
 int tma ;
 int tma_null ;
 int tsc ;
 int tsc_null ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;
 struct time_fixture tfix;

 suite = ptunit_mk_suite(argc, argv);

 tfix.init = tfix_init;
 tfix.fini = ((void*)0);

 ptu_run_f(suite, tsc_null, tfix);
 ptu_run_f(suite, cbr_null, tfix);
 ptu_run_f(suite, tma_null, tfix);
 ptu_run_f(suite, mtc_null, tfix);
 ptu_run_f(suite, cyc_null, tfix);

 ptu_run_f(suite, query_tsc_null, tfix);
 ptu_run_f(suite, query_tsc_none, tfix);
 ptu_run_f(suite, query_cbr_null, tfix);
 ptu_run_f(suite, query_cbr_none, tfix);

 ptu_run_f(suite, tcal_cbr_null, tfix);
 ptu_run_f(suite, tcal_cbr_zero, tfix);
 ptu_run_f(suite, tcal_mtc_null, tfix);
 ptu_run_f(suite, tcal_cyc_null, tfix);

 ptu_run_f(suite, tsc, tfix);
 ptu_run_f(suite, cbr, tfix);
 ptu_run_f(suite, cbr_zero, tfix);
 ptu_run_f(suite, tma, tfix);
 ptu_run_f(suite, mtc, tfix);
 ptu_run_f(suite, cyc, tfix);



 return ptunit_report(&suite);
}
