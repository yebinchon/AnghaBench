
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_fixture {int * fini; int init; } ;
struct ptunit_suite {int dummy; } ;


 int ptu_run_f (struct ptunit_suite,int ,struct sync_fixture) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int sfix_init ;
 int sync_bwd ;
 int sync_bwd_cutoff ;
 int sync_bwd_empty ;
 int sync_bwd_here ;
 int sync_bwd_none ;
 int sync_bwd_null ;
 int sync_bwd_past ;
 int sync_fwd ;
 int sync_fwd_cutoff ;
 int sync_fwd_empty ;
 int sync_fwd_here ;
 int sync_fwd_none ;
 int sync_fwd_null ;
 int sync_fwd_past ;

int main(int argc, char **argv)
{
 struct sync_fixture sfix;
 struct ptunit_suite suite;

 sfix.init = sfix_init;
 sfix.fini = ((void*)0);

 suite = ptunit_mk_suite(argc, argv);

 ptu_run_f(suite, sync_fwd_null, sfix);
 ptu_run_f(suite, sync_bwd_null, sfix);

 ptu_run_f(suite, sync_fwd_empty, sfix);
 ptu_run_f(suite, sync_bwd_empty, sfix);

 ptu_run_f(suite, sync_fwd_none, sfix);
 ptu_run_f(suite, sync_bwd_none, sfix);

 ptu_run_f(suite, sync_fwd_here, sfix);
 ptu_run_f(suite, sync_bwd_here, sfix);

 ptu_run_f(suite, sync_fwd, sfix);
 ptu_run_f(suite, sync_bwd, sfix);

 ptu_run_f(suite, sync_fwd_past, sfix);
 ptu_run_f(suite, sync_bwd_past, sfix);

 ptu_run_f(suite, sync_fwd_cutoff, sfix);
 ptu_run_f(suite, sync_bwd_cutoff, sfix);

 return ptunit_report(&suite);
}
