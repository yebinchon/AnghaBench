
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;
struct bcache_fixture {void* fini; int init; } ;


 int add ;
 int add_bad_index ;
 int add_null ;
 int alloc ;
 int alloc_min ;
 int alloc_too_big ;
 int alloc_zero ;
 int bcache_entry_size ;
 int bcache_size ;
 void* bfix_fini ;
 int bfix_init ;
 unsigned long long bfix_nentries ;
 int cfix_init ;
 int free_null ;
 int initially_empty ;
 int lookup_bad_index ;
 int lookup_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct bcache_fixture) ;
 int ptu_run_fp (struct ptunit_suite,int ,struct bcache_fixture,unsigned long long) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int stress ;

int main(int argc, char **argv)
{
 struct bcache_fixture bfix, cfix;
 struct ptunit_suite suite;

 bfix.init = bfix_init;
 bfix.fini = bfix_fini;

 cfix.init = cfix_init;
 cfix.fini = bfix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, bcache_entry_size);
 ptu_run(suite, bcache_size);

 ptu_run(suite, free_null);
 ptu_run(suite, add_null);
 ptu_run(suite, lookup_null);

 ptu_run_f(suite, alloc, cfix);
 ptu_run_f(suite, alloc_min, cfix);
 ptu_run_f(suite, alloc_too_big, cfix);
 ptu_run_f(suite, alloc_zero, cfix);

 ptu_run_f(suite, initially_empty, bfix);

 ptu_run_f(suite, add_bad_index, bfix);
 ptu_run_f(suite, lookup_bad_index, bfix);

 ptu_run_fp(suite, add, bfix, 0ull);
 ptu_run_fp(suite, add, bfix, bfix_nentries - 1ull);
 ptu_run_f(suite, stress, bfix);

 return ptunit_report(&suite);
}
