
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_fixture {int fini; int init; } ;
struct ptunit_suite {int dummy; } ;


 int attach_bad_iscache ;
 int attach_bad_map ;
 int attach_bad_ucount ;
 int attach_detach ;
 int attach_map ;
 int attach_map_overflow ;
 int attach_null ;
 int attach_overflow ;
 int bcache_alloc_free ;
 int bcache_alloc_nomap ;
 int bcache_alloc_twice ;
 int cache_null ;
 int create ;
 int create_bad_offset ;
 int create_empty ;
 int create_truncated ;
 int detach_bad_iscache ;
 int detach_null ;
 int filename_null ;
 int get_null ;
 int get_overflow ;
 int get_put ;
 int init_no_bcache ;
 int map_change ;
 int map_null ;
 int map_overflow ;
 int map_put ;
 int map_unmap ;
 int memsize_map_bcache ;
 int memsize_map_nobcache ;
 int memsize_nomap ;
 int memsize_null ;
 int memsize_unmap ;
 int offset_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct section_fixture) ;
 int ptu_run_fp (struct ptunit_suite,int ,struct section_fixture,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int put_null ;
 int read ;
 int read_from_truncated ;
 int read_nomap ;
 int read_nomem ;
 int read_null ;
 int read_offset ;
 int read_overflow ;
 int read_overflow_32bit ;
 int read_truncated ;
 int read_unmap_map ;
 int sfix_fini ;
 int sfix_init ;
 int size_null ;
 int stress ;
 int unmap_nomap ;
 int unmap_null ;
 int worker_bcache ;
 int worker_read ;

int main(int argc, char **argv)
{
 struct section_fixture sfix;
 struct ptunit_suite suite;

 sfix.init = sfix_init;
 sfix.fini = sfix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run_f(suite, create, sfix);
 ptu_run_f(suite, create_bad_offset, sfix);
 ptu_run_f(suite, create_truncated, sfix);
 ptu_run_f(suite, create_empty, sfix);

 ptu_run(suite, filename_null);
 ptu_run(suite, offset_null);
 ptu_run(suite, size_null);
 ptu_run(suite, get_null);
 ptu_run(suite, put_null);
 ptu_run(suite, attach_null);
 ptu_run(suite, detach_null);
 ptu_run(suite, map_null);
 ptu_run(suite, unmap_null);
 ptu_run(suite, cache_null);

 ptu_run_f(suite, get_overflow, sfix);
 ptu_run_f(suite, attach_overflow, sfix);
 ptu_run_f(suite, attach_bad_ucount, sfix);
 ptu_run_f(suite, map_change, sfix);
 ptu_run_f(suite, map_put, sfix);
 ptu_run_f(suite, unmap_nomap, sfix);
 ptu_run_f(suite, map_overflow, sfix);
 ptu_run_f(suite, get_put, sfix);
 ptu_run_f(suite, attach_detach, sfix);
 ptu_run_f(suite, attach_bad_iscache, sfix);
 ptu_run_f(suite, detach_bad_iscache, sfix);
 ptu_run_f(suite, map_unmap, sfix);
 ptu_run_f(suite, attach_map, sfix);
 ptu_run_f(suite, attach_bad_map, sfix);
 ptu_run_f(suite, attach_map_overflow, sfix);
 ptu_run_f(suite, read, sfix);
 ptu_run_f(suite, read_null, sfix);
 ptu_run_f(suite, read_offset, sfix);
 ptu_run_f(suite, read_truncated, sfix);
 ptu_run_f(suite, read_from_truncated, sfix);
 ptu_run_f(suite, read_nomem, sfix);
 ptu_run_f(suite, read_overflow, sfix);
 ptu_run_f(suite, read_overflow_32bit, sfix);
 ptu_run_f(suite, read_nomap, sfix);
 ptu_run_f(suite, read_unmap_map, sfix);

 ptu_run_f(suite, init_no_bcache, sfix);
 ptu_run_f(suite, bcache_alloc_free, sfix);
 ptu_run_f(suite, bcache_alloc_twice, sfix);
 ptu_run_f(suite, bcache_alloc_nomap, sfix);

 ptu_run_f(suite, memsize_null, sfix);
 ptu_run_f(suite, memsize_nomap, sfix);
 ptu_run_f(suite, memsize_unmap, sfix);
 ptu_run_f(suite, memsize_map_nobcache, sfix);
 ptu_run_f(suite, memsize_map_bcache, sfix);

 ptu_run_fp(suite, stress, sfix, worker_bcache);
 ptu_run_fp(suite, stress, sfix, worker_read);

 return ptunit_report(&suite);
}
