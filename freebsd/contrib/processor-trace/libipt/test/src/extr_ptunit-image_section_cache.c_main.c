
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;
struct iscache_fixture {void* fini; int init; } ;


 int add ;
 int add_different_same_laddr ;
 int add_file ;
 int add_file_different_same_laddr ;
 int add_file_null ;
 int add_file_same ;
 int add_file_same_different_laddr ;
 int add_no_name ;
 int add_null ;
 int add_same ;
 int add_same_different_laddr ;
 int add_twice ;
 int add_twice_different_laddr ;
 void* cfix_fini ;
 int cfix_init ;
 int clear_empty ;
 int clear_find ;
 int clear_lookup ;
 int clear_null ;
 int dfix_init ;
 int find ;
 int find_bad_filename ;
 int find_bad_laddr ;
 int find_bad_offset ;
 int find_bad_size ;
 int find_empty ;
 int find_null ;
 int find_null_filename ;
 int fini_null ;
 int free_null ;
 int init_fini ;
 int init_null ;
 int lookup ;
 int lookup_bad_isid ;
 int lookup_null ;
 int lru_bcache_clear ;
 int lru_bcache_evict ;
 int lru_clear ;
 int lru_limit_evict ;
 int lru_map ;
 int lru_map_add_front ;
 int lru_map_evict ;
 int lru_map_move_front ;
 int lru_map_nodup ;
 int lru_map_too_big ;
 int lru_read ;
 int name ;
 int name_none ;
 int name_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct iscache_fixture) ;
 int ptu_run_fp (struct ptunit_suite,int ,struct iscache_fixture,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int read ;
 int read_bad_isid ;
 int read_bad_vaddr ;
 int read_null ;
 int read_truncate ;
 int sfix_init ;
 int stress ;
 int worker_add ;
 int worker_add_clear ;
 int worker_add_file ;
 int worker_add_file_clear ;
 int worker_add_file_map ;
 int worker_add_map ;
 int worker_map ;
 int worker_map_bcache ;
 int worker_map_limit ;

int main(int argc, char **argv)
{
 struct iscache_fixture cfix, dfix, sfix;
 struct ptunit_suite suite;

 cfix.init = cfix_init;
 cfix.fini = cfix_fini;

 dfix.init = dfix_init;
 dfix.fini = cfix_fini;

 sfix.init = sfix_init;
 sfix.fini = cfix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init_null);
 ptu_run(suite, fini_null);
 ptu_run(suite, name_null);
 ptu_run(suite, add_null);
 ptu_run(suite, find_null);
 ptu_run(suite, lookup_null);
 ptu_run(suite, clear_null);
 ptu_run(suite, free_null);
 ptu_run(suite, add_file_null);
 ptu_run(suite, read_null);

 ptu_run_f(suite, name, dfix);
 ptu_run_f(suite, name_none, dfix);

 ptu_run_f(suite, init_fini, cfix);
 ptu_run_f(suite, add, cfix);
 ptu_run_f(suite, add_no_name, cfix);
 ptu_run_f(suite, add_file, cfix);

 ptu_run_f(suite, find, cfix);
 ptu_run_f(suite, find_empty, cfix);
 ptu_run_f(suite, find_bad_filename, cfix);
 ptu_run_f(suite, find_null_filename, cfix);
 ptu_run_f(suite, find_bad_offset, cfix);
 ptu_run_f(suite, find_bad_size, cfix);
 ptu_run_f(suite, find_bad_laddr, cfix);

 ptu_run_f(suite, lookup, cfix);
 ptu_run_f(suite, lookup_bad_isid, cfix);

 ptu_run_f(suite, clear_empty, cfix);
 ptu_run_f(suite, clear_find, cfix);
 ptu_run_f(suite, clear_lookup, cfix);

 ptu_run_f(suite, add_twice, cfix);
 ptu_run_f(suite, add_same, cfix);
 ptu_run_f(suite, add_twice_different_laddr, cfix);
 ptu_run_f(suite, add_same_different_laddr, cfix);
 ptu_run_f(suite, add_different_same_laddr, cfix);

 ptu_run_f(suite, add_file_same, cfix);
 ptu_run_f(suite, add_file_same_different_laddr, cfix);
 ptu_run_f(suite, add_file_different_same_laddr, cfix);

 ptu_run_f(suite, read, cfix);
 ptu_run_f(suite, read_truncate, cfix);
 ptu_run_f(suite, read_bad_vaddr, cfix);
 ptu_run_f(suite, read_bad_isid, cfix);

 ptu_run_f(suite, lru_map, cfix);
 ptu_run_f(suite, lru_read, cfix);
 ptu_run_f(suite, lru_map_nodup, cfix);
 ptu_run_f(suite, lru_map_too_big, cfix);
 ptu_run_f(suite, lru_map_add_front, cfix);
 ptu_run_f(suite, lru_map_move_front, cfix);
 ptu_run_f(suite, lru_map_evict, cfix);
 ptu_run_f(suite, lru_limit_evict, cfix);
 ptu_run_f(suite, lru_bcache_evict, cfix);
 ptu_run_f(suite, lru_bcache_clear, cfix);
 ptu_run_f(suite, lru_clear, cfix);

 ptu_run_fp(suite, stress, cfix, worker_add);
 ptu_run_fp(suite, stress, cfix, worker_add_file);
 ptu_run_fp(suite, stress, sfix, worker_map);
 ptu_run_fp(suite, stress, sfix, worker_map_limit);
 ptu_run_fp(suite, stress, sfix, worker_map_bcache);
 ptu_run_fp(suite, stress, cfix, worker_add_map);
 ptu_run_fp(suite, stress, cfix, worker_add_clear);
 ptu_run_fp(suite, stress, cfix, worker_add_file_map);
 ptu_run_fp(suite, stress, cfix, worker_add_file_clear);

 return ptunit_report(&suite);
}
