
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_fixture {int * fini; int init; } ;
struct ptunit_suite {int dummy; } ;


 int alloc_decoder_null ;
 int decoder_fini_null ;
 int decoder_init_null ;
 int free_decoder_null ;
 int get_config ;
 int get_config_null ;
 int get_offset_init ;
 int get_offset_null ;
 int get_sync_offset_null ;
 int next_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct test_fixture) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int sync_backward_null ;
 int sync_forward_null ;
 int sync_set_eos ;
 int sync_set_get_offset ;
 int sync_set_null ;
 int tfix_init ;

int main(int argc, char **argv)
{
 struct test_fixture tfix;
 struct ptunit_suite suite;

 tfix.init = tfix_init;
 tfix.fini = ((void*)0);

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, decoder_init_null);
 ptu_run(suite, decoder_fini_null);
 ptu_run(suite, alloc_decoder_null);
 ptu_run(suite, free_decoder_null);

 ptu_run(suite, sync_forward_null);
 ptu_run(suite, sync_backward_null);
 ptu_run(suite, sync_set_null);
 ptu_run_f(suite, sync_set_eos, tfix);

 ptu_run(suite, get_offset_null);
 ptu_run_f(suite, get_offset_init, tfix);
 ptu_run_f(suite, sync_set_get_offset, tfix);
 ptu_run(suite, get_sync_offset_null);

 ptu_run(suite, get_config_null);
 ptu_run_f(suite, get_config, tfix);

 ptu_run(suite, next_null);

 return ptunit_report(&suite);
}
